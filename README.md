# Sunset / Sunrise quality for Europe
Small python program that pull data from sunsetwx.com for Europe only and give a sunset/sunrise quality according to GPS Coordinates.

**USAGE**:
```
$ python sunset.py sunrise 47.164935 -6.825596
Predicting for GPS coordinates: (47.164935, -6.825596)
sunrise time in zulu: 7
The sunset quality is 49%

```


## Install
Make sure you have the lib tesseract

**MAC:**
```
brew install tesseract
```

**DEBIAN:**
```
sudo apt-get install tesseract-ocr
```

**WINDOWS:**
```
pip install tesseract-ocr
```


## HOW does it works ?
When you go to this (URL)[https://sunsetwx.com/view/?id=5] you will se an image that shows colors for sunset quality.
More redish the color is, better sunset you will get. These images are generated very 3 hours according to the GFS Weather model. The validation time is described in ZULU on the top middle of the image. This time is independent of any position (ZULU Time).

The small python program, get the sunset/sunrise time for a GPS coordinates, download a bunch on these images and select the best one for the concerned sunset time.
After obtaining the image, it reads a 20 pixel square around the GPS coordinates (thanks to the scale the image provides).

A pourcentage of the sunset quality will be returned according to the right scale.


## Improuvments
- don't download all image each time
- Find a better way to parse the text of the image
- Improve the algorithms for calculating the quality
