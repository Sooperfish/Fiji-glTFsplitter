based on lfang-salk/Batch-processing-toolkit

##Split RGB channels

ImageJ/FIJI macro for bulk splitting glTF metalicRoughness.pngs back into their respective Metallic, Roughness and Ambient Occlusion maps.

### Specification:  
Input - RGB metallicRoughness.png images saved in one folder.   
Output - Splitted single channel images saved in three folders, each of which contains images of one single channel.  

The maps are distributed assuming Red = AO, Green = Rougness, Blue = Metallic.

## Installing Imagej:
* go to https://imagej.net/downloads
* pick a distribution (Fiji is the newest as of now)
* unzip the portable application into a folder (not Program Files)

### How to use:
* Put all your images in one folder.
* Simply drag and drop the .ijm file into ImageJ/FIJI.
* Click "Run".
* When the dialog window pops up, select the folder where you put all your images as the target directory.
* Then you are done! Check the splitted single channel images in different folders that were just automatically created!
