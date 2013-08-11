#!/bin/bash

# Rotates a directory of pdf files 90 degrees counterclockwise and merges them into one pdf file

# Requires pdftk

# ./rocatpdf.sh newfilename.pdf

pdftk *.pdf cat output tmp.pdf

pdftk tmp.pdf cat 1-endW output $1

rm tmp.pdf
