cd 677eebd4f214161c2a32e30d

CUR=$(git rev-parse HEAD)
#!/usr/bin/env bash
set -euo pipefail

old_dir=2026-aaai-FAB-old
old_root=main.tex         
new_root=main_aaai.tex   

repo=$(git rev-parse --show-toplevel)
echo "[INFO] repo root: $repo"
cd "$repo"

rm -rf tmp
mkdir -p tmp/old tmp/new  
 
echo "[STEP] clean /tmp ..."


cp -r "$old_dir/"* tmp/old/

cp "$new_root" tmp/new/
cp -r macros.tex *.bib *.sty tmp/new/ 2>/dev/null || true




cd tmp/old
latexpand --makeatletter "$old_root" -o flat.tex
cd ../../

latexpand --makeatletter "$new_root" -o tmp/new/flat.tex

# Compile old version
echo "[STEP] compile old_flat.tex ..."
cd tmp/old
pdflatex flat.tex
bibtex flat
pdflatex flat.tex
pdflatex flat.tex
cd ../../

# Compile new version
echo "[STEP] compile new_flat.tex ..."
cd tmp/new
pdflatex flat.tex
bibtex flat
pdflatex flat.tex
pdflatex flat.tex
cd ../../



latexdiff tmp/old/flat.tex tmp/new/flat.tex > diff.tex
echo "[STEP] latexdiff ..."
pdflatex diff.tex 
 
bibtex diff
pdflatex diff.tex
