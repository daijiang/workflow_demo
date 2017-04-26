# workflow_demo
This repository is intended to use as a demo about how I organize my research projects: from data to manuscript. The idea is to make things automated and organized as much as possible and, of course, use version control across the workflow.

This repository has the following file folders:

- `Data`: this folder is used to hold raw data and output data.
- `R`: this folder holds all R codes.
- `Figs` holds figures generated from R codes.
- `Doc`: this folder holds manuscripts.

Some prerequires:

- `GNU Make`: to document file dependencies and automate workflow. In terminal, you can just type `make` to render the rmarkdown file to pdf and html.
- `R`: for data clean and analyses.
- `LaTeX`: for fine control of typesetting and pdf generation.
- `Pandoc`: for file types converting, e.g. convert markdown file to pdf or docx files or html files.
	+ if you have `Rstudio` installed, you can also use pandoc shipped with Rstudio:   

			sudo ln -s /usr/lib/rstudio/bin/pandoc/pandoc /usr/local/bin   
			sudo ln -s /usr/lib/rstudio/bin/pandoc/pandoc-citeproc /usr/local/bin

## Contributing

Contributions to this demo are more than welcome. Just fork and make changes, then file a pull request. Thanks!

```
# https://gist.github.com/stevenworthington/3178163
# ipak function: install and load multiple R packages.
# check to see if packages are installed. Install them if they are not, then load them into the R session.

ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg)) 
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}

pkgs = c("rmarkdown", "bookdown", "tidyverse", "xtable", "tufte")
ipak(pkgs)
```