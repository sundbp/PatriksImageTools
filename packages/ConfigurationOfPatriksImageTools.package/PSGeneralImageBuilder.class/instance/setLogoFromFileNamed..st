preferences
setLogoFromFileNamed: aFilename
	self isPharo14 ifTrue: [PolymorphSystemSettings showDesktopLogo: false].
	" seems LogoImageMorth is not in my image.. "
	" LogoImageMorph default: (ImageMorph withForm: (ImageReadWriter formFromFileNamed: aFilename)). "
	