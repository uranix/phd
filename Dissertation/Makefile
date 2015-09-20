JUNK= dissertation.aux dissertation.bbl dissertation.blg dissertation.fdb_latexmk \
dissertation.fls dissertation.lof dissertation.log dissertation.lot dissertation.out \
dissertation.pdf dissertation.toc dissertation.log

all:
	latexmk -pdf -pdflatex="xelatex %O %S" dissertation

clean:
	rm -f ${JUNK}
