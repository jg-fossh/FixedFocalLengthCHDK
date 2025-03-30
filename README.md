# Fixed Focal Length CHDK Scripts

```
Copyright (c) 2025, Jose R Garcia (jg-fossh@protonmail.com).
All rights reserved.
```

| META          | DATA                                    |
| :------------ | :-------------------------------------- |
| _Project_     | Fixed Focal Length CHDK Scripts         |
| _Version_     | v0.5                                    |
| _Lincense_    | GNU GPLv3                               |
| _Prepared by_ | Jose R Garcia (jg-fossh@protonmail.com) |
| _Status_      | ***Pre-Release***                       |

## Scope

This document covers the development of the scripts and usage of the scripts libaray in the /SCRIPTS directory. These scripts are used to allow users of CHDK with particular cameras to select specific focal lengths.

## Table of Contents

- [Fixed Focal Length CHDK Scripts](#fixed-focal-length-chdk-scripts)
  - [Scope](#scope)
  - [Table of Contents](#table-of-contents)
  - [Develpment](#develpment)
    - [Scripts Library](#scripts-library)
  - [Target Cameras(...so far)](#target-camerasso-far)
    - [PowerShot SX110 IS](#powershot-sx110-is)
      - [Camera Specs](#camera-specs)
      - [Zoom Steps to Focal Length Equivalency Relation](#zoom-steps-to-focal-length-equivalency-relation)
  - [ELPH 190 IS / IXUS 180 IS](#elph-190-is--ixus-180-is)
      - [Camera Specs](#camera-specs-1)
      - [Zoom Steps to Focal Length Equivalency Relation](#zoom-steps-to-focal-length-equivalency-relation-1)


## Develpment

This project provides a generic script that logs the steps and its respective focal length. This script is a tool that anyone using CHDK could use to quire this information. There are also bespoken fixed focal legth script for each target camera. These scripts were created from the zoom steps logs gathered by the aforementioned tool. All the scripts can be found in the [/SCRIPTS](/SCRIPTS/) directory.

### Scripts Library

| Script name                                                             | Description                                                                                                                                                                                                                                                                                                                                                                                          |
| :---------------------------------------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [FocalSteps.lua](/SCRIPTS/FocalSteps.lua)                               | Loops over the available zoom steps and logs the Full Frame equivalent focal length in a markdown syntax table. The generated log file is named LOG_0001.TXT and written to the /LOGS directory of the camera's CHDK folder.                                                                                                                                                                         |
| [FixedLensSX110.lua](/SCRIPTS/FixedLensSX110.lua)                       | This script starts by displaying the available selection of focal lengths; after which it displays an input text box that accepts one character to provide the user the capability to select between 15 different focal lengths . The focal legth selection is specific to the PowerShot SX110 IS, although it is probably the same for the PowerShot SX120 IS due to the likeness of these cameras. |
| [FixedLens_elph190_ixus180.lua](/SCRIPTS/FixedLens_elph190_ixus180.lua) | This script starts by displaying the available selection of focal lengths; after which it displays an input text box that accepts one character to provide the user the capability to select between 15 different focal lengths . The focal legth selection is specific to the PowerShot ELPH 190 IS / IXUS 180 IS.                                                                                  |


## Target Cameras(...so far)

### PowerShot SX110 IS

#### Camera Specs

| Attribute             | Value           |
| :-------------------- | :-------------- |
| Sensor Size           | 1/2.5" Sensor   |
| Sendor Resolution     | 10MP            |
| Display               | 3" Fixed Screen |
| ISO Range             | 80 - 1600       |
| Image Stabilization   | Optical         |
| Video Resolution      | 640 x 480       |
| Equivalent Focal Lens | 36-360mm        |
| Aperture              | F2.8-4.3        |
| Weight                | 285g            |
| Dimensions            | 111 x 71 x 45mm |

#### Zoom Steps to Focal Length Equivalency Relation

| Step  |  1/2.5" |     FF |    Name     |  Category   | Option |
| :---: | ------: | -----: | :---------: | :---------: | :----: |
|   0   |    6 mm |  36 mm |   Street    |    Wide     |   A    |
|   1   |  5.2 mm |  40 mm |      -      |    Wide     |   -    |
|   2   |  6.4 mm |  43 mm |     Eye     |   Normal    |   B    |
|   3   |  7.7 mm |  49 mm |    Nifty    |   Normal    |   C    |
|   4   |  9.1 mm |  54 mm |      -      |   Normal    |   -    |
|   5   | 11.8 mm |  61 mm |   Narrow    |   Normal    |   D    |
|   6   | 13.6 mm |  69 mm | Portrait70  |    Noral    |   E    |
|   7   |   17 mm |  76 mm | Portrait75  | Medium Tele |   F    |
|   8   | 22.1 mm |  86 mm | Portrait85  | Medium Tele |   G    |
|   9   |   43 mm |  96 mm | Portrait96  | Medium Tele |   H    |
|  10   |   43 mm | 108 mm | Portrait110 | Medium Tele |   -    |
|  11   |   43 mm | 120 mm |      -      |    Tele     |   -    |
|  12   |   43 mm | 134 mm |  Sports135  |    Tele     |   I    |
|  13   |   43 mm | 151 mm |  Sports155  |    Tele     |   J    |
|  14   |   43 mm | 168 mm |      -      |    Tele     |   -    |
|  15   |   43 mm | 189 mm |      -      |    Tele     |   -    |
|  16   |   43 mm | 209 mm |  Sports210  |    Tele     |   K    |
|  17   |   43 mm | 233 mm |      -      |    Tele     |   -    |
|  18   |   43 mm | 255 mm |  Sports255  |    Tele     |   L    |
|  19   |   43 mm | 279 mm |  Sports280  |    Tele     |   M    |
|  20   |   43 mm | 305 mm |  Nature300  | Super Tele  |   N    |
|  21   |   43 mm | 335 mm |      -      | Super Tele  |   -    |
|  22   |   60 mm | 360 mm |  Nature360  | Super Tele  |   O    |

## ELPH 190 IS / IXUS 180 IS

#### Camera Specs

| Attribute             | Value             |
| :-------------------- | :---------------- |
| Sensor Size           | 1/2.3" Sensor     |
| Sendor Resolution     | 20MP              |
| Display               | 2.7" Fixed Screen |
| ISO Range             | 100 - 1600        |
| Image Stabilization   | Optical           |
| Video Resolution      | 1280 x 720        |
| Equivalent Focal Lens | 24-240mm          |
| Aperture              | F3.0-6.9          |
| Weight                | 138g              |
| Dimensions            | 95 x 57 x 24mm    |

#### Zoom Steps to Focal Length Equivalency Relation

| Step  |  1/2.3" |         FF |    Name     |  Category   | Option |
| :---: | ------: | ---------: | :---------: | :---------: | :----: |
|   0   |  4.3 mm |  23.888 mm |  Architect  | Ultra Wide  |   A    |
|   1   |  4.3 mm |  24.805 mm |      -      | Ultra Wide  |   -    |
|   2   |  4.3 mm |  25.050 mm |      -      | Ultra Wide  |   -    |
|   3   |  4.3 mm |  25.311 mm |      -      | Ultra Wide  |   -    |
|   4   |  4.3 mm |  25.583 mm |      -      | Ultra Wide  |   -    |
|   5   |  4.3 mm |  25.866 mm |      -      | Ultra Wide  |   -    |
|   6   |  4.3 mm |  26.161 mm |      -      | Ultra Wide  |   -    |
|   7   |  4.3 mm |  26.477 mm |      -      | Ultra Wide  |   -    |
|   8   |  4.3 mm |  26.811 mm |      -      | Ultra Wide  |   -    |
|   9   |  4.3 mm |  27.161 mm |      -      | Ultra  Wide |   -    |
|  10   |  4.3 mm |  27.533 mm |      -      | Ultra Wide  |   -    |
|  11   |  4.3 mm |  27.922 mm |  Street28   |    Wide     |   B    |
|  12   |  4.3 mm |  28.338 mm |      -      |    Wide     |   -    |
|  13   |  4.3 mm |  28.777 mm |      -      |    Wide     |   -    |
|  14   |  4.3 mm |  29.238 mm |      -      |    Wide     |   -    |
|  15   |  4.3 mm |  29.722 mm |      -      |    Wide     |   -    |
|  16   |  4.3 mm |  30.238 mm |      -      |    Wide     |   -    |
|  17   |  4.3 mm |  30.238 mm |      -      |    Wide     |   -    |
|  18   |  4.3 mm |  31.350 mm |      -      |    Wide     |   -    |
|  19   |  4.3 mm |  31.950 mm |      -      |    Wide     |   -    |
|  20   |  4.3 mm |  32.583 mm |      -      |    Wide     |   -    |
|  21   |  4.3 mm |  32.583 mm |      -      |    Wide     |   -    |
|  22   |  4.3 mm |  33.950 mm |      -      |    Wide     |   -    |
|  23   |  4.3 mm |  34.683 mm |      -      |    Wide     |   -    |
|  24   |  4.3 mm |  34.683 mm |  Street35   |    Wide     |   C    |
|  25   |  4.3 mm |  36.261 mm |      -      |    Wide     |   -    |
|  26   |  4.3 mm |  36.261 mm |      -      |    Wide     |   -    |
|  27   |  4.3 mm |  37.994 mm |      -      |    Wide     |   -    |
|  28   |  4.3 mm |  38.922 mm |      -      |    Wide     |   -    |
|  29   |  4.3 mm |  39.894 mm |      -      |    Wide     |   -    |
|  30   |  5.2 mm |  39.894 mm |      -      |    Wide     |   -    |
|  31   |  6.4 mm |  41.966 mm |      -      |   Normal    |   -    |
|  32   |  7.7 mm |  43.072 mm |     Eye     |   Normal    |   D    |
|  33   |  9.1 mm |  44.222 mm |      -      |   Normal    |   -    |
|  34   | 11.8 mm |  44.222 mm |      -      |   Normal    |   -    |
|  35   | 13.6 mm |  45.422 mm |      -      |   Normal    |   -    |
|  36   |   17 mm |  47.972 mm |      -      |   Normal    |   -    |
|  37   | 22.1 mm |  49.322 mm |      -      |   Normal    |   -    |
|  38   |   43 mm |  49.322 mm |    Nifty    |   Normal    |   E    |
|  39   |   43 mm |  52.166 mm |      -      |   Normal    |   -    |
|  40   |   43 mm |  53.672 mm |      -      |   Normal    |   -    |
|  41   |   43 mm |  55.222 mm |      -      |   Normal    |   -    |
|  42   |   43 mm |  55.222 mm |      -      |   Normal    |   -    |
|  43   |   43 mm |  58.483 mm |      -      |   Normal    |   -    |
|  44   |   43 mm |  58.483 mm |      -      |   Normal    |   -    |
|  45   |   43 mm |  60.194 mm |      -      |   Normal    |   -    |
|  46   |   43 mm |  63.761 mm |      -      |   Normal    |   -    |
|  47   |   43 mm |  63.761 mm |   Narrow    |   Normal    |   F    |
|  48   |   43 mm |  65.616 mm |      -      |   Normal    |   -    |
|  49   |   43 mm |  69.477 mm | Portrait70  | Medium Tele |   G    |
|  50   |   43 mm |  71.477 mm |      -      | Medium Tele |   -    |
|  51   |   60 mm |  73.522 mm | Portrait75  | Medium Tele |   H    |
|  52   |         |  75.611 mm |      -      | Medium Tele |   -    |
|  53   |         |  77.744 mm |      -      | Medium Tele |   -    |
|  54   |         |  79.916 mm |      -      | Medium Tele |   -    |
|  55   |         |  82.133 mm |      -      | Medium Tele |   -    |
|  56   |         |  84.388 mm | Portrait85  | Medium Tele |   I    |
|  57   |         |  86.683 mm |      -      | Medium Tele |   -    |
|  58   |         |  89.011 mm |      -      | Medium Tele |   -    |
|  59   |         |  91.377 mm |      -      | Medium Tele |   -    |
|  60   |         |  93.777 mm |      -      | Medium Tele |   -    |
|  61   |         |  96.216 mm |      -      | Medium Tele |   -    |
|  62   |         |  98.688 mm | Portrait100 |    Tele     |   J    |
|  63   |         | 101.194 mm |      -      |    Tele     |   -    |
|  64   |         | 103.738 mm |      -      |    Tele     |   -    |
|  65   |         | 106.316 mm |      -      |    Tele     |   -    |
|  66   |         | 108.933 mm |      -      |    Tele     |   -    |
|  67   |         | 111.588 mm |      -      |    Tele     |   -    |
|  68   |         | 114.277 mm |      -      |    Tele     |   -    |
|  69   |         | 117.016 mm |      -      |    Tele     |   -    |
|  70   |         | 119.794 mm |      -      |    Tele     |   -    |
|  71   |         | 122.616 mm |      -      |    Tele     |   -    |
|  72   |         | 125.488 mm |      -      |    Tele     |   -    |
|  73   |         | 128.411 mm |      -      |    Tele     |   -    |
|  74   |         | 131.383 mm |      -      |    Tele     |   -    |
|  75   |         | 134.416 mm |  Sports135  |    Tele     |   K    |
|  76   |         | 137.511 mm |      -      |    Tele     |   -    |
|  77   |         | 140.672 mm |      -      |    Tele     |   -    |
|  78   |         | 143.900 mm |      -      |    Tele     |   -    |
|  79   |         | 147.194 mm |      -      |    Tele     |   -    |
|  80   |         | 150.566 mm |  Sports150  |    Tele     |   L    |
|  81   |         | 154.016 mm |      -      |    Tele     |   -    |
|  82   |         | 157.550 mm |      -      |    Tele     |   -    |
|  83   |         | 161.166 mm |      -      |    Tele     |   -    |
|  84   |         | 164.872 mm |      -      |    Tele     |   -    |
|  85   |         | 168.661 mm |      -      |    Tele     |   -    |
|  86   |         | 172.544 mm |      -      |    Tele     |   -    |
|  87   |         | 176.522 mm |      -      |    Tele     |   -    |
|  88   |         | 180.583 mm |      -      |    Tele     |   -    |
|  89   |         | 184.744 mm |      -      |    Tele     |   -    |
|  90   |         | 188.988 mm |      -      |    Tele     |   -    |
|  91   |         | 193.316 mm |      -      |    Tele     |   -    |
|  92   |         | 197.733 mm |  Sports200  |    Tele     |   M    |
|  93   |         | 202.222 mm |      -      | Super Tele  |   -    |
|  94   |         | 206.783 mm |      -      | Super Tele  |   -    |
|  95   |         | 211.411 mm |      -      | Super Tele  |   -    |
|  96   |         | 216.100 mm |      -      | Super Tele  |   -    |
|  97   |         | 220.833 mm |      -      | Super Tele  |   -    |
|  98   |         | 225.616 mm |  Sports225  | Super Tele  |   N    |
|  99   |         | 230.433 mm |      -      | Super Tele  |   -    |
|  100  |         | 238.888 mm |  Sports240  | Super Tele  |   O    |