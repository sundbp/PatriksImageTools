preferences
repositoriesPassword
	| passwordFile |
	passwordFile := FileDirectory default oldFileNamed: '/home/pts/pharo/repositories_password.txt'.
	^passwordFile contents trimRight: [ :each | each = Character cr ].
		