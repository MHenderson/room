pdf: output/room.pdf

clean:
	rm -rf output

output/room.pdf: src/room.tex
	latexmk -cd -output-directory=../output -pdfxe $<
