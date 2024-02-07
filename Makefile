PROJECT = room
OUTDIR = ${BUILD_FOLDER}/Combinatorics/Room\ Squares
PDF_OUTPUT = $(OUTDIR)/$(PROJECT).pdf
DRAFT_OUTPUT = $(OUTDIR)/$(PROJECT)-draft.pdf
TEXFILE = src/$(PROJECT).tex
DRAFTTEXFILE = src/$(PROJECT)-draft.tex

.PHONY: all draft pdf watch clean

all: pdf

draft: $(DRAFT_OUTPUT)

pdf: $(PDF_OUTPUT)

$(DRAFT_OUTPUT): ${DRAFTTEXFILE}
	latexmk -cd -outdir=$(OUTDIR) -xelatex $<;
	latexmk -c -cd -outdir=$(OUTDIR) -xelatex $<

$(PDF_OUTPUT): ${TEXFILE}
	latexmk -cd -outdir=$(OUTDIR) -xelatex $<;
	latexmk -c -cd -outdir=$(OUTDIR) -xelatex $<

watch: $(DRAFTTEXFILE)
	latexmk -cd -outdir=$(OUTDIR) -pvc -xelatex $<

count:
	wc src/chapters/*.tex > wc.txt

