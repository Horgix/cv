OUTDIR		= ../output
PDF		= xelatex --output-directory ${OUTDIR}

all:: fr en

fr:: ${CVFR}.pdf

en:: ${CVEN}.pdf

%.pdf: %.tex
	${PDF} $<
