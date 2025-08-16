all: clean
	latexmk -shell-escape -pdf paper.tex

clean:
	latexmk -bibtex -C
