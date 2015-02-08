ALL: Doc/ms.pdf Doc/ms.docx 
	# Doc/ms.tex

Doc/ms.pdf: Doc/ms.md Figs/plot.pdf
	pandoc --number-sections Doc/ms.md -o Doc/ms.pdf --template=Doc/template2.tex --bibliography=Doc/ref.bib --csl=Doc/oikos.csl

# Doc/ms.tex: Doc/ms.md Figs/plot.pdf
# 	pandoc --number-sections Doc/ms.md -o Doc/ms.tex --template=Doc/template2.tex --bibliography=Doc/ref.bib --csl=Doc/oikos.csl

Doc/ms.md: Doc/ms.Rmd
	Rscript -e 'library(knitr);knit("Doc/ms.Rmd","Doc/ms.md")' 

Doc/ms.docx: Doc/ms.md Figs/plot.pdf
	pandoc Doc/ms.md -o Doc/ms.docx --template=Doc/template.tex --bibliography=Doc/ref.bib --csl=Doc/oikos.csl

Figs/plot.pdf: R/rcode.R Data/Raw_data/under2012.csv Data/Raw_data/envi.csv
	Rscript R/rcode.R
