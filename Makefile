LATEX=pdflatex

.PHONY: all pt_photo pt_no_photo en_photo en_no_photo clean

all: pt_photo pt_no_photo en_photo en_no_photo

pt_photo:
	cd pt_photo && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

pt_no_photo:
	cd pt_no_photo && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

en_photo:
	cd en_photo && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

en_no_photo:
	cd en_no_photo && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

clean:
	find pt_photo -type f ! -name "*.tex" -delete
	find en_photo -type f ! -name "*.tex" -delete
	find pt_no_photo -type f ! -name "*.tex" -delete
	find en_no_photo -type f ! -name "*.tex" -delete
