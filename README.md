# Batch-processing-toolkit
This repository includes a FIJI macro for bulk splitting glTF metalicRoughness.pngs back into their respective Metallic, Roughness and Ambient Occlusion maps.

based on lfang-salk/Batch-processing-toolkit

## 2. Split RGB channels

ImageJ/FIJI Macro - Batch splitting 2D RGB .tif/.tiff images into single channels and save them in 3 different folders

### Specification:  
Input - RGB metallicRoughness.png images saved in one folder.   
Output - Splitted single channel images saved in three folders, each of which contains images of one single channel.  

### How to use:
* Put all your images in one folder.
* Simply drag and drop the .ijm file into ImageJ/FIJI.
* Click "Run".
* When the dilog window pops up, select the folder where you put all your images as the target directory.
* Then you are done! Check the spliited single channel images in different folders that are just automatically created!
