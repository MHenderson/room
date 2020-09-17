pdf: main.pdf

clean:
	rm -f main.pdf main.aux main.knit.md main.log main.toc main.utf8.md main.tex

main.pdf: main.Rmd
	Rscript -e "Sys.setenv(RSTUDIO_PANDOC='/usr/lib/rstudio/bin/pandoc');rmarkdown::render('$<')"
