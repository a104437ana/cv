LATEX=pdflatex

.PHONY: all pt_photo pt_no_photo en_photo en_no_photo pt_photo_specific pt_no_photo_specific en_photo_specific en_no_photo_specific img clean

all: pt_photo pt_no_photo en_photo en_no_photo pt_photo_specific pt_no_photo_specific en_photo_specific en_no_photo_specific img

pt_photo:
	cd cvs/pt_photo && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

pt_no_photo:
	cd cvs/pt_no_photo && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

en_photo:
	cd cvs/en_photo && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

en_no_photo:
	cd cvs/en_no_photo && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

pt_photo_specific:
	cd cvs/pt_photo_specific && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

pt_no_photo_specific:
	cd cvs/pt_no_photo_specific && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

en_photo_specific:
	cd cvs/en_photo_specific && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

en_no_photo_specific:
	cd cvs/en_no_photo_specific && $(LATEX) cv.tex && $(LATEX) cv.tex && $(LATEX) cv.tex

img:
	python3 convert_pdf_to_image.py

clean:
	find cvs/pt_photo -type f ! -name "*.tex" -delete
	find cvs/en_photo -type f ! -name "*.tex" -delete
	find cvs/pt_no_photo -type f ! -name "*.tex" -delete
	find cvs/en_no_photo -type f ! -name "*.tex" -delete
	find cvs/pt_photo_specific -type f ! -name "*.tex" -delete
	find cvs/en_photo_specific -type f ! -name "*.tex" -delete
	find cvs/pt_no_photo_specific -type f ! -name "*.tex" -delete
	find cvs/en_no_photo_specific -type f ! -name "*.tex" -delete
	find cvs/img -type f ! -name ".gitkeep" -delete