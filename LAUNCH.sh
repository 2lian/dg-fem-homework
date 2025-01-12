#!/bin/bash
# quick compile
rm main.aux main.out *.pdf
cd ~/dg-fem-homework/
pdflatex -interaction=nonstopmode main.tex 
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dNOPAUSE -dQUIET -dBATCH -dPrinted=true -sOutputFile=pyfr_homwork.pdf -r1000 main.pdf

# post process
pdflatex -interaction=nonstopmode main.tex
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.5 -dNOPAUSE -dQUIET -dBATCH -dPrinted=true -sOutputFile=pyfr_homwork.pdf -r1000 main.pdf
