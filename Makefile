LASTNAME	= chotard
FIRSTNAME	= alexis

CVFR		= $(LASTNAME)_$(FIRSTNAME)_cv_fr
CVEN		= $(LASTNAME)_$(FIRSTNAME)_cv_en

PDF		= pdflatex
VIEW		= evince

all:: fr en

fr:: $(CVFR).pdf

en:: $(CVEN).pdf

%.pdf: %.tex
	$(PDF) $<

frdisplay::
	$(VIEW) $(CVFR).pdf

endisplay::
	$(VIEW) $(CVEN).pdf

clean::
	rm -f *.aux *.log *.out

distclean:: clean
	rm -f *.pdf

nuke:: distclean
