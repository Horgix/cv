all::
	pdflatex cv.tex

fr::
	pdflatex chotard_alexis_cv_fr.tex

frdisplay::
	evince chotard_alexis_cv_fr.pdf

clean::
	rm -f *.aux *.log *.out *.pdf
