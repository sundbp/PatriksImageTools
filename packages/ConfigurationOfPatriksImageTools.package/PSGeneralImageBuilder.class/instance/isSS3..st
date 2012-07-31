private
isSS3: aRepo

	^ aRepo locationWithTrailingSlash includesSubString: 'http://ss3.gemstone.com/ss/'
		