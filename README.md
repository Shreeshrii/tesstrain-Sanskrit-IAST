# tesstrain-Sanskrit-IAST
Tesseract Traineddata for Sanskrit IAST (written with diacritics)

## New models 

- MODEL_NAME `IAST` (March 2021).
```
Version string:5.0.0-alpha-20201231-237-g51a21
17:lstm:size=435255, offset=192
21:lstm-unicharset:size=14117, offset=435447
22:lstm-recoder:size=1849, offset=449564
23:version:size=31, offset=451413
LSTM: network=[1,36,0,1Ct3,3,16Mp3,3Lfys64Lfx96Lrx96Lfx512O1c1][Lfx192O1c1], int_mode=1, recoding=1, iteration=1347600, sample_iteration=1352626, null_char=203, learning_rate=0.000707107, momentum=0.5, adam_beta=0.999
Layer Learning Rates: :0(Input)=0.000707107, :1:0(Convolve)=0.000707107, :1:1(ConvNL)=0.000707107, :2(Maxpool)=0.000707107, :3:0(Lfys64)=0.000707107, :4(Lfx96)=0.000707107, :5:0(Lrx96)=0.000707107, :6(Lfx192)=0.000707107, :7(Output)=0.000707107

```
- MODEL_NAME `IASTuned_0.101000_1896935_14312000` was trained by by replacing top layer of START_MODEL=IAST for 14312000 iterations (September 2021) 
```
Version string:5.0.0-alpha-20201231-477-g60d2
17:lstm:size=435846, offset=192
21:lstm-unicharset:size=15909, offset=436038
22:lstm-recoder:size=2156, offset=451947
23:version:size=30, offset=454103
LSTM: network=[1,36,0,1Ct3,3,16Mp3,3Lfys64Lfx96Lrx96Lfx512O1c1][Lfx192O1c1][Lfx192O1c1], int_mode=1, recoding=1, iteration=14312000, sample_iteration=14317194, null_char=206, learning_rate=1.76777e-05, momentum=0.5, adam_beta=0.999
Layer Learning Rates: :0(Input)=1.76777e-05, :1:0(Convolve)=1.76777e-05, :1:1(ConvNL)=1.76777e-05, :2(Maxpool)=1.76777e-05, :3:0(Lfys64)=1.76777e-05, :4(Lfx96)=1.76777e-05, :5:0(Lrx96)=1.76777e-05, :6(Lfx192)=1.76777e-05, :7(Output)=1.76777e-05

```
- MODEL_NAME `IASTuned_0.088000_1951804_15423100` was trained by by replacing top layer of START_MODEL=IAST for 15423100 iterations(June 2021)
```
Version string:5.0.0-alpha-20201231-477-g60d2
17:lstm:size=435846, offset=192
21:lstm-unicharset:size=15909, offset=436038
22:lstm-recoder:size=2156, offset=451947
23:version:size=30, offset=454103
LSTM: network=[1,36,0,1Ct3,3,16Mp3,3Lfys64Lfx96Lrx96Lfx512O1c1][Lfx192O1c1][Lfx192O1c1], int_mode=1, recoding=1, iteration=15423100, sample_iteration=15428696, null_char=206, learning_rate=1.76777e-05, momentum=0.5, adam_beta=0.999
Layer Learning Rates: :0(Input)=1.76777e-05, :1:0(Convolve)=1.76777e-05, :1:1(ConvNL)=1.76777e-05, :2(Maxpool)=1.76777e-05, :3:0(Lfys64)=1.76777e-05, :4(Lfx96)=1.76777e-05, :5:0(Lrx96)=1.76777e-05, :6(Lfx192)=1.76777e-05, :7(Output)=1.76777e-05

```

Both [Best Models](tessdata_best) and [Fast Integer Models](tessdata_fast) are provided.

## Old models 

- MODEL_NAME `DevaLayer-201017` was trained by replacing top layer of START_MODEL=Devanagari (Oct 2020).
```
Version string:Devalayer:FAST:from:Devanagari:20201017:shreeshrii

0:config:size=552, offset=192
17:lstm:size=505604, offset=744
18:lstm-punc-dawg:size=4322, offset=506348
19:lstm-word-dawg:size=1891826, offset=510670
20:lstm-number-dawg:size=4618, offset=2402496
21:lstm-unicharset:size=20010, offset=2407114
22:lstm-recoder:size=2533, offset=2427124
23:version:size=51, offset=2429657

LSTM: network=[1,48,0,1Ct3,3,16Mp3,3Lfys64Lfx64Lrx64Lfx512O1c1][Lfx256O1c1], int_mode=1, recoding=1, iteration=1359700, sample_iteration=1359732, null_char=2, learning_rate=0.00025, momentum=0.5, adam_beta=0.999
Layer Learning Rates: :0(Input)=0.00025, :1:0(Convolve)=0.00025, :1:1(ConvNL)=0.00025, :2(Maxpool)=0.00025, :3:0(Lfys64)=0.00025, :4(Lfx64)=0.00025, :5:0(Lrx64)=0.00025, :6(Lfx256)=0.00025, :7(Output)=0.00025

```

- MODEL_NAME `PuranaFinetune-210224` was trained by finetuning START_MODEL=DevaLayer-201017 (Feb 2021) using a [few scanned images of Puranic Encyclopeadia](https://github.com/Shreeshrii/tesstrain-Sanskrit-IAST/issues/1) for 3600 iterations, mainly to fix letter `e` being recognized as `c`.
```
Version string:5.0.0-alpha-20201231-183-gc653[FAST:PuranaFinetune:DevaLayer:Devanagari:2021-02-24:shreeshrii]
0:config:size=552, offset=192
17:lstm:size=505604, offset=744
18:lstm-punc-dawg:size=4322, offset=506348
19:lstm-word-dawg:size=544034, offset=510670
20:lstm-number-dawg:size=4618, offset=1054704
21:lstm-unicharset:size=20010, offset=1059322
22:lstm-recoder:size=2533, offset=1079332
23:version:size=94, offset=1081865
LSTM: network=[1,48,0,1Ct3,3,16Mp3,3Lfys64Lfx64Lrx64Lfx512O1c1][Lfx256O1c1], int_mode=1, recoding=1, iteration=3600, sample_iteration=3600, null_char=2, learning_rate=0.00025, momentum=0.5, adam_beta=0.999
Layer Learning Rates: :0(Input)=0.00025, :1:0(Convolve)=0.00025, :1:1(ConvNL)=0.00025, :2(Maxpool)=0.00025, :3:0(Lfys64)=0.00025, :4(Lfx64)=0.00025, :5:0(Lrx64)=0.00025, :6(Lfx256)=0.00025, :7(Output)=0.00025

```

Only [Fast Integer Models](tessdata_fast) are provided.

## Testing

The test directory has a few sample images and the recognized text using these models.
