building
buildImage
	self 
		loadImagePackages;
		generalImagePreferences;
		customPreferences;
		cleanSystem;
		lastActions.
	 	" To automatically save the image use #saveImage here"
		
	Transcript open.
	Transcript show: 'Image has been setup according to specification, but it has NOT been save. Please use Save As to save it under a new name'; cr.
	