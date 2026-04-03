from pdf2image import convert_from_path

pdf_path = "cvs/en_photo/Ana_Sa_Oliveira_CV.pdf"

pages = convert_from_path(pdf_path, first_page=1, last_page=1)

pages[0].save("cvs/img/Ana_Sa_Oliveira_CV.png", "PNG")