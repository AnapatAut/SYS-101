mkdir bin
mkdir out
make all
cp prog bin/prog
rm prog
make clean
./bin/prog
Rscript plot.R
cp output.txt out/output.txt
rm output.txt
dot -Tpng diagram.dot > image.png
pdflatex createPdf.tex
cp Rplots.pdf out/Rplots.pdf
cp image.png out/image.png
cp createPdf.aux out/createPdf.aux
cp createPdf.log out/createPdf.log
rm Rplots.pdf
rm image.png
rm createPdf.aux
rm createPdf.log