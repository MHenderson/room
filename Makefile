TEXFILE=src/room.tex
DRAFTTEXFILE=src/room-draft.tex
OUTDIR=../out

pdf: ${TEXFILE}
	latexmk -cd -outdir=$(OUTDIR) -xelatex $<;
	latexmk -c -cd -outdir=$(OUTDIR) -xelatex $<

draft: ${DRAFTTEXFILE}
	latexmk -cd -outdir=$(OUTDIR) -xelatex $<;
	latexmk -c -cd -outdir=$(OUTDIR) -xelatex $<

watch: $(DRAFTTEXFILE)
	latexmk -cd -outdir=$(OUTDIR) -pvc -xelatex $(word 1, $^)
