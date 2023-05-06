pdf: room.pdf

clean:
	rm -f output/main.bbl output/main.blg output/main.aux output/main.bcf output/main.fdb_latexmk output/main.fls output/main.run.xml output/main.toc output/main.xdv

cleanall:
	rm -rf output

room.tex: room.Rnw chapters/*.Rnw
	Rscript -e "Sys.setenv(RSTUDIO_PANDOC='/usr/lib/rstudio/bin/pandoc');knitr::knit('$<', output='$@')"

room.pdf: room.tex
	latexmk -output-directory=output -pdfxe $<
