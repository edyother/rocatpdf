#!/bin/bash

# Rotates a directory of pdf files 90 degrees counterclockwise and merges them into one pdf file

# Requires imagemagick and pdfunite

# ./rocatpdf.sh newfilename.pdf

mkdir -p rotated

for i in $( ls *.pdf ); do 
	convert -rotate 270 $i ./rotated/$i
done

cd rotated

pdfunite $( ls ) ../$1

cd ../

rm -r rotated
