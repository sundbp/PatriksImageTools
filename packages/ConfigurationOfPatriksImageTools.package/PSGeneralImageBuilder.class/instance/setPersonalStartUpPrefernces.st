startUp
setPersonalStartUpPrefernces
	"self setPersonalStartUpPrefernces"
	| items |
	items := OrderedCollection new.

	items add: (StartupAction name: 'General Preferences for all Pharo versions' code: [
		FileStream stdout lf; nextPutAll: 'Setting general preferences for all Pharo versions'; lf.
		Author fullName: 'PatrikSundberg'.
		FileStream stdout lf; nextPutAll: 'Finished'; lf.
		]).
	StartupLoader default addAtStartupInGeneralPreferenceFolder: items named: 'generalSettings.st'.

	items removeAll.
	items add: (StartupAction name: 'Settings' code: [
		FileStream stdout lf; nextPutAll: 'Setting general preferences'; lf.
		UITheme currentSettings fastDragging: true.
		CodeHolder showAnnotationPane: true.
		MCCodeTool showAnnotationPane: true.
		Deprecation raiseWarning: true.
		Debugger alwaysOpenFullDebugger: true.
		Parser warningAllowed: false.
		FileStream stdout lf; nextPutAll: 'Finished'; lf.
	]).
	StartupLoader default addAtStartupInPreferenceVersionFolder: items named: 'settings.st'.

	items removeAll.
	"items add: (StartupAction name: 'Nautilus' code: [
		FileStream stdout lf; nextPutAll: 'Executing Nautilus related stuff'; lf.
		Nautilus pluginClasses add: { NautilusBreadcrumbsPlugin. #top }.
		Nautilus pluginClasses add: { AnnotationPanePlugin. #middle }.
		FileStream stdout lf; nextPutAll: 'Finished'; lf.
	] runOnce: true).
	StartupLoader default addAtStartupInPreferenceVersionFolder: items named: 'nautilus.st'.
"

	items removeAll.
	items add: (StartupAction name: 'Monticello related stuff' code: [
		| sharedPackageCacheDirectory |
		FileStream stdout lf; nextPutAll: 'Executing Monticello related stuff'; lf.
		sharedPackageCacheDirectory := (FileDirectory on: '/home/pts/pharo/local-mc-repo/')
			assureExistence;
			yourself.
		MCCacheRepository default directory: sharedPackageCacheDirectory.
		MCDirectoryRepository defaultDirectoryName: '/home/pts/pharo/local-mc-repo/'.
		(MCRepositoryGroup default repositories
			select: [:each | (each isKindOf: MCHttpRepository)
				and: [((each locationWithTrailingSlash includesSubString: 'www.squeaksource.com')
					or: [each locationWithTrailingSlash includesSubString: 'http://ss3.gemstone.com/ss/'])]
						]) do: [:each |
							each
							user: 'sundbp';
							password: ((FileDirectory default oldFileNamed: '/Users/mariano/Pharo/repositoriesPassword.txt') contents).
							].
		FileStream stdout lf; nextPutAll: 'Finished'; lf.
	] runOnce: true ).
	StartupLoader default addAtStartupInPreferenceVersionFolder: items named: 'monticello.st'.
