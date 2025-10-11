cd 677eebd4f214161c2a32e30d
latexdiff tmp/old/flat.tex tmp/new/flat.tex > diff.tex
echo "[STEP] latexdiff ..."
pdflatex diff.tex

bibtex diff
pdflatex diff.tex
~                                                                                       
~                              
