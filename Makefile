# to make it simple, I intentionally write out all file names, instead of using
# $@ or $< etc. 
# A good simple tutorial about Make can be found at http://kbroman.org/minimal_make/ 
ALL: Doc/ms.pdf Doc/ms.docx 
	# Doc/ms.tex

# final pdf file depends on markdown file and plots from R
Doc/ms.pdf: Doc/ms.md Figs/plot.pdf
	pandoc --number-sections Doc/ms.md -o Doc/ms.pdf --template=Doc/template2.tex --bibliography=Doc/ref.bib --csl=Doc/oikos.csl

# Doc/ms.tex: Doc/ms.md Figs/plot.pdf
# 	pandoc --number-sections Doc/ms.md -o Doc/ms.tex --template=Doc/template2.tex --bibliography=Doc/ref.bib --csl=Doc/oikos.csl

# markdown file depends on rmarkdown file.
Doc/ms.md: Doc/ms.Rmd
	cd Doc;Rscript -e 'library(knitr);knit("ms.Rmd","ms.md")' 

Doc/ms.docx: Doc/ms.md Figs/plot.pdf
	pandoc Doc/ms.md -o Doc/ms.docx --template=Doc/template.tex --bibliography=Doc/ref.bib --csl=Doc/oikos.csl

# final plots depends on r codes and raw data.
Figs/plot.pdf: R/rcode.R Data/Raw_data/under2012.csv Data/Raw_data/envi.csv
	cd R;Rscript rcode.R
