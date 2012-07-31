preferences
generalImagePreferences
	UITheme currentSettings fastDragging: true.
	CodeHolder showAnnotationPane: true.
	MCCodeTool showAnnotationPane: true.
	Deprecation raiseWarning: true.
	Debugger alwaysOpenFullDebugger: true.
	Parser warningAllowed: false. 
	TasklistMorph keepOpen: true.
	"(Smalltalk at: #TWMBar) showTWMBar: true."
	"Smalltalk tools register: (Smalltalk at: #GTInspector)  as: #objectExplorer."
	" GTPlayground is not yet working correctly, so I disable it for the moment"
	"Smalltalk tools register: (Smalltalk at: #GTPlayground)  as: #workspace."
	"Nautilus showHierarchy: true. 
	Nautilus switchClassesAndPackages: false.
	(Smalltalk globals includesKey: #AnnotationPanePlugin)
		ifTrue: [Nautilus pluginClasses add: { AnnotationPanePlugin. #middle }.].
	Nautilus pluginClasses add: { NautilusBreadcrumbsPlugin. #top }.
	"