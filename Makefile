main.pdf: *.tex *.bib Makefile
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

view: main.pdf
	xpdf main.pdf&

