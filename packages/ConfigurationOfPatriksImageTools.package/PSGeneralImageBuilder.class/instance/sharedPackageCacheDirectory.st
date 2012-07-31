file directories
sharedPackageCacheDirectory
	^(self sharedPackageCacheName) asFileReference 
		ensureDirectory;
		yourself
