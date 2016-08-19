LASTNAME	= chotard
FIRSTNAME	= alexis

export CV	= ${LASTNAME}_${FIRSTNAME}_cv
export CVFR	= ${CV}_fr
export CVEN	= ${CV}_en

export SRCDIR	= ${PWD}/src
export OUTDIR	= ${PWD}/output
export VIEWER	= zathura

all:: fr en

fr en::
	mkdir -p ${OUTDIR}
	make -C ${SRCDIR} $@
	ln -s -f ${OUTDIR}/${CV}_$@.pdf .

fredit::
	${EDITOR} ${SRCDIR}/${CVFR}.tex
enedit::
	${EDITOR} ${SRCDIR}/${CVEN}.tex

frdisplay::
	${VIEWER} ${CVFR}.pdf
endisplay::
	${VIEWER} ${CVEN}.pdf

clean::
	rm -f ${OUTDIR}/*.{aux,log,out}

distclean:: clean
	rm -rf *.pdf ${OUTDIR}

nuke:: distclean
