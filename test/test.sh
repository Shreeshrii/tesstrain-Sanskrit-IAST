#!/bin/bash

for lang in DevaLayer-201017  PuranaFinetune-210224 IAST IASTuned_0.101000_1896935_14312000 IASTuned_0.088000_1951804_15423100; do
	combine_tessdata -d ../tessdata_fast/${lang}.traineddata
	combine_tessdata -l ../tessdata_fast/${lang}.traineddata
	for f in *.png; do 
	   echo ${f}
       time -p tesseract ${f} ${f%.*}-${lang} -l ${lang} --tessdata-dir ../tessdata_fast 
	done
done
