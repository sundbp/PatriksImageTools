cleaning
cleanSystem
	SystemWindow allSubInstancesDo: [:window | window delete].
	" TOD: add this back in: Spotlight reset. "

	"Clear Monticello Caches"
	MCFileBasedRepository flushAllCaches.
	MCMethodDefinition shutDown.
	MCDefinition clearInstances.

	"Cleanup Smalltalk"
	Smalltalk flushClassNameCache.
	Smalltalk organization removeEmptyCategories.
	Smalltalk allClassesAndTraitsDo: [ :each |
		each organization removeEmptyCategories; sortCategories.
		each class organization removeEmptyCategories; sortCategories ].
	
	"Cleanup System Memory"
	Smalltalk garbageCollect.
	Symbol compactSymbolTable.
	
	ScriptLoader new cleanUpForRelease.	

	"put back the author"
	Author fullName: 'PatrikSundberg'.
	