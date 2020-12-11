# tess5training-sanskrit-iast
Tesseract Traineddata for Sanskrit in Devanagari script and IAST (written in English alphabet with diacritics)

## Traineddata files

- [Sanskrit-20201017 - Replace Layer](data/tessdata_best/Sanskrit-1017.traineddata)
- [Sanskrit-20201211 - Plus Minus - 0.14 CER](data/tessdata_best/Sanskrit_0.141_286442_2117300.traineddata)
- [San-20201211 - From Scratch - 1.15 CER](data/tessdata_best/San_1.15_386224_1103200.traineddata)

## Plotting of Character Error Rates

MatPlotLib can be used to visualize the CER from training iterations, checkpoints, evaluation test and validation test. 

### CER for Sanskrit-20201211 - Plus Minus - scanned list included in training

![Sanskrit-20201211 CER Plot](/plot/Sanskrit-scanned-plot_cer.png)

### CER for San-20201211 - From Scratch - Validate list not included in training

![San-20201211 CER Plot](/plot/San-validate-plot_cer.png)