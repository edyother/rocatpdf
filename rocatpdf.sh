#!/bin/bash

mkdir -p rotated

for i in $( ls ); do 
	convert -rotate 270 $i ./rotated/$i
done

cd rotated

pdfunite $( ls ) ../$1

cd ../

rm -r rotated
