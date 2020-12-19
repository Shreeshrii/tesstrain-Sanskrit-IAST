# tesstrain-Sanskrit-IAST
Tesseract Traineddata for Sanskrit in Devanagari script and IAST (written in English alphabet with diacritics)

## Traineddata files 

The naming convention for the files is Model_NAME_CER%_LearningIteration_TrainingIteration

- `Sanskrit` MODEL_NAME was trained with START_MODEL=Devanagari on Power8 with 42862 lines of training data.
- `San` MODEL_NAME was trained from scratch on AArch64 with 173845 lines of training data.
- `DevaLayer` MODEL_NAME was trained by replacing top layer of START_MODEL=Devanagari on Power8.

Two types of models are available.

- [Fast Integer Models - faster, slightly less accurate](tessdata_fast)
- [Best Float/Double Models - slower, can be used as START_MODEL](tessdata_best)

## Plotting of Character Error Rates

Sample plots to visualize the CER from training iterations, checkpoints, evaluation test and validation test: 

- [Sanskrit](plot/Sanskrit-scanned-plot_cer.png)
- [San](plot/San-validate-plot_cer.png)
