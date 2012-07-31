loading
loadPackages: packagesOrGroups
	| version repo |
	self generalPreLoad.
	version := (ConfigurationOfPatrik project version: #bleedingEdge).
	self class buildOffline 
		ifTrue: [ 
			repo := MCDirectoryRepository new.
  			repo directory: self sharedPackageCacheDirectory.
 	 		version repositoryOverrides: (OrderedCollection with: repo). ].
	
	version load: packagesOrGroups.