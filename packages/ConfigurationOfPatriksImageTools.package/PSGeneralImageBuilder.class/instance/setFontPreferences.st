preferences
setFontPreferences
	" Let's use our own fonts "
	
	| font |
	font := LogicalFont familyName: 'Monaco for Powerline' pointSize: 9.
	StandardFonts defaultFont: font.
	StandardFonts codeFont: font.
	StandardFonts listFont: font.
