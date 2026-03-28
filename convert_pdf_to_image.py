from pdf2image import convert_from_path

pdf_path = "cvs/en_photo/cv.pdf"

pages = convert_from_path(pdf_path, first_page=1, last_page=1)

pages[0].save("cvs/img/cv.png", "PNG")