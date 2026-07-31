# Creates a new compressed resume.pdf and deletes the old one
compile:
    typst compile resume.typ resume.pdf
    gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.7 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=resume_compressed.pdf resume.pdf
    rm resume.pdf
    mv resume_compressed.pdf resume.pdf
