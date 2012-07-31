accessing
buildOffline
	BuildOffline ifNil: [ BuildOffline := false ].
	^ BuildOffline