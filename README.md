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
- `LaTeX`: for fine control of typesetting and pdf generation. Recommend to use [`tinytex`](https://yihui.org/tinytex/).
- `Pandoc`: for file types converting, e.g. convert markdown file to pdf or docx files or html files.
	+ if you have `Rstudio` installed, you can also use pandoc shipped with Rstudio

## Contributing

Contributions to this demo are more than welcome. Just fork and make changes, then file a pull request. Thanks!

