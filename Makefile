main.pdf: *.tex *.bib Makefile
	pdflatex main.tex
	bibtex main
	pdflatex main.tex
	pdflatex main.tex

view: main.pdf
	xpdf main.pdf&


fold:
	for i in *.tex; do fold -w 80 -s $$i >> $$i.new; mv $$i.new $$i; done
