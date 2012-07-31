private
putMyRepositoriesAtTheEnd
	| myRepo |
	myRepo :=  MCRepositoryGroup default repositories 
		detect: [:each | each description = self repositoryName]
		ifNone: [ "this means it was loaded offline used the shared package cache, so I do nothing" ^ self ].
	MCRepositoryGroup default  removeRepository: myRepo.
	MCRepositoryGroup default  addRepository: myRepo.
