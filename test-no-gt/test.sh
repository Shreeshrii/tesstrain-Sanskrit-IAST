#!/bin/bash

for f in *.png; do 
    for lang in DevaLayer-201017  PuranaFinetune-210224; do
       time -p tesseract ${f} ${f%.*}-${lang} -l ${lang} --tessdata-dir ../tessdata_fast 
    done
done

for f in *.png; do 
    for lang in IAST IASTuned_0.101000_1896935_14312000 IASTuned_0.088000_1951804_15423100; do
       time -p tesseract ${f} ${f%.*}-${lang} -l ${lang} --tessdata-dir ../tessdata_best 
    done
done