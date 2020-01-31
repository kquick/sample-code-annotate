emacs -batch --load myexport.el --visit=sample.org --funcall org-latex-export-to-pdf 2>&1 | tee pdf.log
for x in 1 2 3 4 5 ; do
    (texname=sample.tex
     if grep 'Rerun to get cross-references right' pdf.log ; then
         pdflatex --interaction nonstopmode $texname | tee pdf.log
     fi
    )
done
