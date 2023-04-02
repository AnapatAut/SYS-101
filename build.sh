mkdir bin
make all
cp prog bin/prog
rm prog
make clean
./bin/prog
Rscript plot.R
dot -Tpng diagram.dot > image.png