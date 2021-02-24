#!/bin/bash

for f in *.png; do 
    for lang in DevaLayer-201017  PuranaFinetune-210224; do
       time -p tesseract ${f} ${f%.*}-${lang} -l ${lang} --tessdata-dir ../tessdata_fast 
    done
done
