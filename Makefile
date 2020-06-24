pdf: main.pdf

clean:
	rm -f main.pdf

main.pdf: main.Rmd
	Rscript -e "Sys.setenv(RSTUDIO_PANDOC='/usr/lib/rstudio/bin/pandoc');rmarkdown::render('$<')"
