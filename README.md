# Batch_processing_toolkit
This repository includes hands-on FIJI macros mainly for Image batch processing.

## Table of contents:
1. Downsampling and upsampling
2. Split RGB channels

## 1. Downsampling and upsampling

This scripts is used for batch downsampling and upsampling.

Specification:   
Input - 2D .tif or .tiff 8-bit raw hr images saved in one folder.   
Output - Five folders:
* Folder 1 - hr: your input 8-bit images
* Folder 2 - hr_RGB: result of converting input 8-bit images into RGB format
* Folder 3 - lr: Downsampled RGB images (Downsampling method: None; Scale: 4X)
* Folder 4 - bicubic_upsampling: upsampled RGB images (Upsampling method: bicubic; Scale: 4X) 
* Folder 5 - bilinear_upsampling: upsampled RGB images (Upsampling method: bilinear; Scale: 4X)   

Note: All the upsampled images use None downsampled images (i.e. images in Folder 3) as input.
