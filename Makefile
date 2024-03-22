BUILDDIR = build

LATEXMK ?= latexmk -pdf
FLAGS = -g -pdflatex="pdflatex --enable-pipes --shell-escape %O %S"
BUILD_FILES = *.fls *.aux *.fdb_latexmk *.log *.out *.toc
CHAPTERS_BUILD = chapters/*.aux

CHAPTERS = $(wildcard chapters/*.tex)
PLOTS = $(wildcard plots/*.tex)
PREZ_IMG = $(wildcard img-prez/*.png)
THESIS = thesis.pdf
PREZ = prez.pdf

TARGETS = $(THESIS) $(PREZ)

all: thesis prez

thesis: dir $(THESIS)
prez: dir $(PREZ)

dir:
	mkdir -p $(BUILDDIR)

$(THESIS): thesis.tex $(CHAPTERS) $(PLOTS) bibliography.bib
	$(LATEXMK) $(FLAGS) thesis.tex
	@mv $(BUILD_FILES) *.bbl *blg build/
	@mv $(CHAPTERS_BUILD) build/

$(PREZ): prez.tex $(PREZ_IMG)
	$(LATEXMK) $(FLAGS) prez.tex
	@mv $(BUILD_FILES) *.nav *.snm build/

clean:
	rm -rf $(BUILDDIR) $(TARGETS) $(wildcard _minted-*)

PHONY: all thesis prez

