# Fixed Focal Length CHDK Scripts

```
Copyright (c) 2025, Jose R Garcia (jg-fossh@protonmail.com).
All rights reserved.
```

| META          | DATA                                    |
| :------------ | :-------------------------------------- |
| _Project_     | Fixed Focal Length CHDK Scripts         |
| _Version_     | v1.0                                    |
| _Lincense_    | GNU GPLv3                               |
| _Prepared by_ | Jose R Garcia (jg-fossh@protonmail.com) |
| _Status_      | ***Released***                          |

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

| Step  |   1/2.5" |     FF |    Name     |  Category   | Option |
| :---: | -------: | -----: | :---------: | :---------: | :----: |
|   0   |  6.00 mm |  36 mm |   Street    |    Wide     |   A    |
|   1   |  6.67 mm |  40 mm |      -      |    Wide     |   -    |
|   2   |  7.17 mm |  43 mm |     Eye     |   Normal    |   B    |
|   3   |  8.17 mm |  49 mm |    Nifty    |   Normal    |   C    |
|   4   |  9.00 mm |  54 mm |      -      |   Normal    |   -    |
|   5   | 10.17 mm |  61 mm |   Narrow    |   Normal    |   D    |
|   6   | 11.50 mm |  69 mm | Portrait70  |    Noral    |   E    |
|   7   | 12.67 mm |  76 mm | Portrait75  | Medium Tele |   F    |
|   8   | 14.33 mm |  86 mm | Portrait85  | Medium Tele |   G    |
|   9   | 16.00 mm |  96 mm | Portrait96  | Medium Tele |   H    |
|  10   | 18.00 mm | 108 mm | Portrait110 | Medium Tele |   -    |
|  11   | 20.00 mm | 120 mm |      -      |    Tele     |   -    |
|  12   | 22.33 mm | 134 mm |  Sports135  |    Tele     |   I    |
|  13   | 25.16 mm | 151 mm |  Sports155  |    Tele     |   J    |
|  14   | 28.00 mm | 168 mm |      -      |    Tele     |   -    |
|  15   | 31.50 mm | 189 mm |      -      |    Tele     |   -    |
|  16   | 34.83 mm | 209 mm |  Sports210  |    Tele     |   K    |
|  17   | 38.83 mm | 233 mm |      -      |    Tele     |   -    |
|  18   | 42.50 mm | 255 mm |  Sports255  |    Tele     |   L    |
|  19   | 46.50 mm | 279 mm |  Sports280  |    Tele     |   M    |
|  20   | 50.83 mm | 305 mm |  Nature300  | Super Tele  |   N    |
|  21   | 55.83 mm | 335 mm |      -      | Super Tele  |   -    |
|  22   | 60.00 mm | 360 mm |  Nature360  | Super Tele  |   O    |

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

| Step  |    1/2.3" |         FF |    Name     |  Category   | Option |
| :---: | --------: | ---------: | :---------: | :---------: | :----: |
|   0   |  4.300 mm |  23.888 mm |  Architect  | Ultra Wide  |   A    |
|   1   |  4.465 mm |  24.805 mm |      -      | Ultra Wide  |   -    |
|   2   |  4.509 mm |  25.050 mm |      -      | Ultra Wide  |   -    |
|   3   |  4.556 mm |  25.311 mm |      -      | Ultra Wide  |   -    |
|   4   |  4.605 mm |  25.583 mm |      -      | Ultra Wide  |   -    |
|   5   |  4.656 mm |  25.866 mm |      -      | Ultra Wide  |   -    |
|   6   |  4.709 mm |  26.161 mm |      -      | Ultra Wide  |   -    |
|   7   |  4.766 mm |  26.477 mm |      -      | Ultra Wide  |   -    |
|   8   |  4.826 mm |  26.811 mm |      -      | Ultra Wide  |   -    |
|   9   |  4.889 mm |  27.161 mm |      -      | Ultra  Wide |   -    |
|  10   |  4.956 mm |  27.533 mm |      -      | Ultra Wide  |   -    |
|  11   |  5.026 mm |  27.922 mm |  Street28   |    Wide     |   B    |
|  12   |  5.101 mm |  28.338 mm |      -      |    Wide     |   -    |
|  13   |  5.180 mm |  28.777 mm |      -      |    Wide     |   -    |
|  14   |  5.263 mm |  29.238 mm |      -      |    Wide     |   -    |
|  15   |  5.350 mm |  29.722 mm |      -      |    Wide     |   -    |
|  16   |  5.443 mm |  30.238 mm |      -      |    Wide     |   -    |
|  17   |  5.443 mm |  30.238 mm |      -      |    Wide     |   -    |
|  18   |  5.643 mm |  31.350 mm |      -      |    Wide     |   -    |
|  19   |  5.751 mm |  31.950 mm |      -      |    Wide     |   -    |
|  20   |  5.865 mm |  32.583 mm |      -      |    Wide     |   -    |
|  21   |  5.865 mm |  32.583 mm |      -      |    Wide     |   -    |
|  22   |  6.111 mm |  33.950 mm |      -      |    Wide     |   -    |
|  23   |  6.243 mm |  34.683 mm |      -      |    Wide     |   -    |
|  24   |  6.243 mm |  34.683 mm |  Street35   |    Wide     |   C    |
|  25   |  6.527 mm |  36.261 mm |      -      |    Wide     |   -    |
|  26   |  6.527 mm |  36.261 mm |      -      |    Wide     |   -    |
|  27   |  6.839 mm |  37.994 mm |      -      |    Wide     |   -    |
|  28   |  7.006 mm |  38.922 mm |      -      |    Wide     |   -    |
|  29   |  7.181 mm |  39.894 mm |      -      |    Wide     |   -    |
|  30   |  7.181 mm |  39.894 mm |      -      |    Wide     |   -    |
|  31   |  7.554 mm |  41.966 mm |      -      |   Normal    |   -    |
|  32   |  7.753 mm |  43.072 mm |     Eye     |   Normal    |   D    |
|  33   |  7.960 mm |  44.222 mm |      -      |   Normal    |   -    |
|  34   |  7.960 mm |  44.222 mm |      -      |   Normal    |   -    |
|  35   |  8.176 mm |  45.422 mm |      -      |   Normal    |   -    |
|  36   |  8.635 mm |  47.972 mm |      -      |   Normal    |   -    |
|  37   |  8.878 mm |  49.322 mm |      -      |   Normal    |   -    |
|  38   |  8.878 mm |  49.322 mm |    Nifty    |   Normal    |   E    |
|  39   |  9.390 mm |  52.166 mm |      -      |   Normal    |   -    |
|  40   |  9.661 mm |  53.672 mm |      -      |   Normal    |   -    |
|  41   |  9.940 mm |  55.222 mm |      -      |   Normal    |   -    |
|  42   |  9.940 mm |  55.222 mm |      -      |   Normal    |   -    |
|  43   | 10.527 mm |  58.483 mm |      -      |   Normal    |   -    |
|  44   | 10.527 mm |  58.483 mm |      -      |   Normal    |   -    |
|  45   | 10.835 mm |  60.194 mm |      -      |   Normal    |   -    |
|  46   | 11.477 mm |  63.761 mm |      -      |   Normal    |   -    |
|  47   | 11.477 mm |  63.761 mm |   Narrow    |   Normal    |   F    |
|  48   | 11.811 mm |  65.616 mm |      -      |   Normal    |   -    |
|  49   | 12.506 mm |  69.477 mm | Portrait70  | Medium Tele |   G    |
|  50   | 12.866 mm |  71.477 mm |      -      | Medium Tele |   -    |
|  51   | 13.234 mm |  73.522 mm | Portrait75  | Medium Tele |   H    |
|  52   | 13.610 mm |  75.611 mm |      -      | Medium Tele |   -    |
|  53   | 13.994 mm |  77.744 mm |      -      | Medium Tele |   -    |
|  54   | 14.385 mm |  79.916 mm |      -      | Medium Tele |   -    |
|  55   | 14.784 mm |  82.133 mm |      -      | Medium Tele |   -    |
|  56   | 15.190 mm |  84.388 mm | Portrait85  | Medium Tele |   I    |
|  57   | 15.603 mm |  86.683 mm |      -      | Medium Tele |   -    |
|  58   | 16.022 mm |  89.011 mm |      -      | Medium Tele |   -    |
|  59   | 16.448 mm |  91.377 mm |      -      | Medium Tele |   -    |
|  60   | 16.880 mm |  93.777 mm |      -      | Medium Tele |   -    |
|  61   | 17.319 mm |  96.216 mm |      -      | Medium Tele |   -    |
|  62   | 17.764 mm |  98.688 mm | Portrait100 |    Tele     |   J    |
|  63   | 18.215 mm | 101.194 mm |      -      |    Tele     |   -    |
|  64   | 18.673 mm | 103.738 mm |      -      |    Tele     |   -    |
|  65   | 19.137 mm | 106.316 mm |      -      |    Tele     |   -    |
|  66   | 19.608 mm | 108.933 mm |      -      |    Tele     |   -    |
|  67   | 20.086 mm | 111.588 mm |      -      |    Tele     |   -    |
|  68   | 20.570 mm | 114.277 mm |      -      |    Tele     |   -    |
|  69   | 21.063 mm | 117.016 mm |      -      |    Tele     |   -    |
|  70   | 21.563 mm | 119.794 mm |      -      |    Tele     |   -    |
|  71   | 22.071 mm | 122.616 mm |      -      |    Tele     |   -    |
|  72   | 22.588 mm | 125.488 mm |      -      |    Tele     |   -    |
|  73   | 23.114 mm | 128.411 mm |      -      |    Tele     |   -    |
|  74   | 23.649 mm | 131.383 mm |      -      |    Tele     |   -    |
|  75   | 24.195 mm | 134.416 mm |  Sports135  |    Tele     |   K    |
|  76   | 24.752 mm | 137.511 mm |      -      |    Tele     |   -    |
|  77   | 25.321 mm | 140.672 mm |      -      |    Tele     |   -    |
|  78   | 25.902 mm | 143.900 mm |      -      |    Tele     |   -    |
|  79   | 26.495 mm | 147.194 mm |      -      |    Tele     |   -    |
|  80   | 27.102 mm | 150.566 mm |  Sports150  |    Tele     |   L    |
|  81   | 27.723 mm | 154.016 mm |      -      |    Tele     |   -    |
|  82   | 28.360 mm | 157.550 mm |      -      |    Tele     |   -    |
|  83   | 29.010 mm | 161.166 mm |      -      |    Tele     |   -    |
|  84   | 29.678 mm | 164.872 mm |      -      |    Tele     |   -    |
|  85   | 30.360 mm | 168.661 mm |      -      |    Tele     |   -    |
|  86   | 31.059 mm | 172.544 mm |      -      |    Tele     |   -    |
|  87   | 31.775 mm | 176.522 mm |      -      |    Tele     |   -    |
|  88   | 32.506 mm | 180.583 mm |      -      |    Tele     |   -    |
|  89   | 33.255 mm | 184.744 mm |      -      |    Tele     |   -    |
|  90   | 34.019 mm | 188.988 mm |      -      |    Tele     |   -    |
|  91   | 34.798 mm | 193.316 mm |      -      |    Tele     |   -    |
|  92   | 35.593 mm | 197.733 mm |  Sports200  |    Tele     |   M    |
|  93   | 36.401 mm | 202.222 mm |      -      | Super Tele  |   -    |
|  94   | 37.222 mm | 206.783 mm |      -      | Super Tele  |   -    |
|  95   | 38.055 mm | 211.411 mm |      -      | Super Tele  |   -    |
|  96   | 38.899 mm | 216.100 mm |      -      | Super Tele  |   -    |
|  97   | 39.751 mm | 220.833 mm |      -      | Super Tele  |   -    |
|  98   | 40.612 mm | 225.616 mm |  Sports225  | Super Tele  |   N    |
|  99   | 41.479 mm | 230.433 mm |      -      | Super Tele  |   -    |
|  100  | 43.001 mm | 238.888 mm |  Sports240  | Super Tele  |   O    |
