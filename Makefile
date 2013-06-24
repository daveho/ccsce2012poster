all : poster.pdf

poster.pdf : poster.tex poster.bib
	pdflatex poster
	bibtex poster
	pdflatex poster
	pdflatex poster

clean :
	rm -rf *.aux *.log poster.pdf
