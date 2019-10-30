private
createGlobalInstanceOf: aClass withName: aSymbol

	^ self environment
		at: aSymbol
		put: (aClass createNamed: aSymbol)
