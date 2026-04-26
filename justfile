compile:
    typst compile main.typ resume.pdf
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.7 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=resume_compressed.pdf resume.pdf
