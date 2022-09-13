.PHONY: all
all: index.pdf

%.pdf: %.tex
	latexmk $*.tex
	mv target/$*.pdf $*.pdf

.PHONY: clean
clean: 
	rm -rf *.pdf target
