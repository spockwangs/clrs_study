# Makefile for .tex files
#

TEX = pdflatex
PDFS = Fundamental.algorithms.pdf Sol.to.CLRS.pdf

all: $(PDFS)

%.pdf: %.tex
	@echo Generating $^ ...
	@$(TEX) $^; $(TEX) $^
	@$(RM) *.log *.aux *.dvi

clean:
	@echo Cleaning ...
	@$(RM) $(PDFS) *.log *.aux *.dvi

.PHONY: all clean


