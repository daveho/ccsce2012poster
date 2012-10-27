%.pdf : %.tex
	pdflatex $*
	bibtex $*
	pdflatex $*
	pdflatex $*

all : poster.pdf

clean :
	rm -rf *.aux *.log poster.pdf
