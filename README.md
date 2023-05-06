## Room Squares

```r
knitr::knit("src/room.Rnw", output = "src/room.tex")
```

to create the LaTeX output.

Then use make in src to build the PDF.

Neither the targets build for the .tex file nor the Makefile rule for the
.tex file work.