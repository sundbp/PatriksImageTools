saving
saveImageAs: imageName inDirectoryNamed: aDirectoryString

	| newName index |

	" TODO: StartupLoader default removeAllScriptsAndCleanSavedActions. "
	
	(FileDirectory default fileExists: (aDirectoryString , imageName, '.' , FileDirectory changeSuffix))
		ifTrue:
			[ newName := (FileDirectory on: aDirectoryString ) nextNameFor: imageName extension: FileDirectory imageSuffix.
			index := newName findLast: [:c | c = $.].
			newName := newName copyFrom: 1 to: (index - 1).	]
		ifFalse: [ newName := imageName ].
		
	newName isEmptyOrNil
		ifTrue: [ ^ self ].
		
	(SourceFiles at: 2) ifNotNil:
		[Smalltalk closeSourceFiles; "so copying the changes file will always work"
			 saveChangesInFileNamed: (aDirectoryString , newName, '.' , FileDirectory changeSuffix)].
	^Smalltalk saveImageInFileNamed: (aDirectoryString , newName, '.', FileDirectory imageSuffix)