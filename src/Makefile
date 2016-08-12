OUTDIR		?= ${PWD}/../output
BUILDCMD	= docker run --rm -v ${SRCDIR}:/var/sources -v ${OUTDIR}:/var/output horgix/latex xelatex --output-directory /var/output

all:: fr en

fr:: ${CVFR}.pdf

smile:: ${CVSMILE}.pdf

en:: ${CVEN}.pdf

%.pdf: %.tex
	${BUILDCMD} $<
