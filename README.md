# tesstrain-Sanskrit-IAST
Tesseract Traineddata for Sanskrit IAST (written with diacritics)

## Training 

- MODEL_NAME `DevaLayer-201017` was trained by replacing top layer of START_MODEL=Devanagari (Oct 2020).
- MODEL_NAME `PuranaFinetune-210224` was trained by finetuning START_MODEL=DevaLayer-201017 (Feb 2021) using a [few scanned images of Puranic Encyclopeadia](https://github.com/Shreeshrii/tesstrain-Sanskrit-IAST/issues/1) for 3600 iterations, mainly to fix letter `e` being recognized as `c`.

Only [Fast Integer Models](tessdata_fast) are provided.

## Testing

The test directory has a few sample images and the recognized text using these models.
