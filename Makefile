PARTS=thesis.tex

all: clean thesis.pdf 

thesis.pdf: $(PARTS) bibliography.bib 
	pdflatex -shell-escape thesis.tex
	pdflatex -shell-escape thesis.tex
	pdflatex -shell-escape thesis.tex
	bibtex thesis
	bibtex thesis
	bibtex thesis
	pdflatex -shell-escape thesis.tex
	pdflatex -shell-escape thesis.tex

clean:
	rm -f *.log *.blg *.aux *.bbl *.4tc *.xref *.tmp *.dvi *.hd *.idx *.out *.toc *.drv *.ins *.pdf
	rm -rf ~*
	rm -rf *.tmp
	rm -rf *.4om
	rm -rf *~
