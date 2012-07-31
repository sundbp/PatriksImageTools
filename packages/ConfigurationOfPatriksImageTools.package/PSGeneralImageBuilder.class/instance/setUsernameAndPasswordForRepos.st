private
setUsernameAndPasswordForRepos
	"This sets the username and password in all squeaksource repositories. The password must stored in a specific file in the machine where you are building this image."
	| reposToChange |
	reposToChange := (MCRepositoryGroup default  repositories) select: [ :each | self shouldSetUserAndPassword: each ].
	reposToChange do: [:each |
			each 
				user: 'sundbp';
				password: self repositoriesPassword. ].