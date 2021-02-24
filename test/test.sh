#!/bin/bash

for lang in DevaLayer-201017  PuranaFinetune-210224; do
    for f in *.png; do 
       tesseract ${f} ${f%.*}-${lang} -l ${lang} --tessdata-dir ../tessdata_fast 
    done
done
