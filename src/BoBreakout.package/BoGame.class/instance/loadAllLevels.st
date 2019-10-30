level flow
loadAllLevels
	|  defaultURI extensionMask |
	defaultURI := 'BoBreakout/levels'.
	extensionMask := '*.lvl'.	
	(FileDirectory uri: defaultURI) fileNames do: [ :entry |
		(extensionMask match: entry) ifTrue: [ | fileName |
			fileName := (FileDirectory uri: defaultURI, '/', entry) fullName.
			self class class compile: (entry copyReplaceAll: '.lvl' with: ''), '
			^ ReadWriteStream on: ',
			(FileStream fileNamed: fileName) contents storeString
	]].
