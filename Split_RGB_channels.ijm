//Batch split RGB channels and save different channel into different folders 

//Specification:
//Input - RGB metallicRoughness.png images saved in one folder.
//Output - Splitted single channel images saved in three folders, each of which contains images of one single channel

//originally written by Linjing Fang on 1/16/2018
//Email: lfang@salk.edu

//adapted by Sooperfish
//**********************************************************************************//

// when this is true, the script runs faster but images are hidden
setBatchMode(true);

// load array of all RGB images in the input directory
path = getDirectory("Select the folder of your input png RGB images"); 

filelist = getFileList(path);

//Create folders for each splitted channel
File.makeDirectory(path + "Splitted channel - Metallic");   
File.makeDirectory(path + "Splitted channel - Roughness");
File.makeDirectory(path + "Splitted channel - Ambient Occlusion"); 


for (i=0; i< filelist.length; i++) {
	// process png files only
	if (endsWith(filelist[i], ".png")) {
    	open(filelist[i]);
    	print("Splitting: "+ filelist[i]);
		run("Split Channels");
		
		// Save blue channel
		selectWindow(filelist[i] + " (blue)");
		NewName_blue = replace(filelist[i],"_metallicRougness.png","_metallic.png");
		print("Saving:  " + NewName_blue);
		path_blue = path + "Splitted channel - Metallic/";
		save(path_blue + NewName_blue); 

		// Save green channel
		selectWindow(filelist[i] + " (blue)");
		NewName_green = replace(filelist[i],"_metallicRoughness.png","_roughness.png");
		print("Saving:  " + NewName_green);
		path_green = path + "Splitted channel - Roughness/";
		save(path_green + NewName_green); 

		// Save red channel
		selectWindow(filelist[i] + " (blue)");
		NewName_red = replace(filelist[i],"_metalicRougness.png","_AO.png");
		print("Saving:  " + NewName_red);
		path_red = path + "Splitted channel - Ambient Occlusion/";		
		save(path_red + NewName_red); 
	}
}
