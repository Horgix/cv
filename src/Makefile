OUTDIR		= ../output
PDF		= xelatex --output-directory ${OUTDIR}

all:: fr en

fr:: ${CVFR}.pdf

smile:: ${CVSMILE}.pdf

en:: ${CVEN}.pdf

%.pdf: %.tex
	${PDF} $<
