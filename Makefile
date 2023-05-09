pdf: output/room.pdf

clean:
	rm -rf output

output/room.pdf: room.tex
	latexmk -cd -output-directory=output -pdfxe $<
