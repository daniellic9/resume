#!/bin/bash

echo "This script will build all the .tex files on repository"

for file in *.tex 
do
    latex $file
    dvi_file=$(echo $file | cut -d"." -f 1)
    dvipdf $dvi_file".dvi"
done

echo "DONE"
