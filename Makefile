LASTNAME	= chotard
FIRSTNAME	= alexis

export CV	= ${LASTNAME}_${FIRSTNAME}_cv
export CVFR	= ${CV}_fr
export CVEN	= ${CV}_en

SRCDIR		= ./src
OUTDIR		= ./output
VIEWER		= zathura

all::
	make -C ${SRCDIR}

fr en::
	mkdir -p ${OUTDIR}
	make -C ${SRCDIR} $@
	ln -s ${OUTDIR}/${CV}_$@.pdf .

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
