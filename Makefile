# to make it simple, I intentionally write out all file names, instead of using
# $@ or $< etc. 
# A good simple tutorial about Make can be found at http://kbroman.org/minimal_make/ 
ALL: Doc/ms.html Doc/ms.pdf Doc/respond_to_reviewer.pdf Doc/respond_to_reviewer.html

OStype := $(shell uname -s)

optimg:
	optipng -o5 ../figures/*.png
	
Doc/ms.pdf: Doc/ms.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "bookdown::pdf_document2")'
	if [[ $(OStype) == Darwin ]]; then open $@; fi

Doc/ms.docx: Doc/ms.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "bookdown::word_document2")'
	open $@
	
Doc/ms.html: Doc/ms.Rmd
	Rscript -e 'rmarkdown::render("$<", output_format = "bookdown::html_document2")'
	open $@

# to get a pdf showing add/delete changes
diff.pdf: diff.tex 
	xelatex -interaction nonstopmode diff
	# bibtex diff
	xelatex -interaction nonstopmode diff
	open diff.pdf

diff.tex: ms_old.tex ms_new.tex
	latexdiff ms_new.tex ms_old.tex > diff.tex

clean:
	rm -f */*.aux */*.log */*.out */*.blg */*.bbl
	
Doc/respond_to_reviewer.pdf: Doc/respond_to_reviewer.Rmd
	Rscript -e 'rmarkdown::render("$<")'
	if [[ $(OStype) == Darwin ]]; then open $@; fi

Doc/respond_to_reviewer.html: Doc/respond_to_reviewer.Rmd
	Rscript -e 'rmarkdown::render("$<")'
	if [[ $(OStype) == Darwin ]]; then open $@; fi
	
	