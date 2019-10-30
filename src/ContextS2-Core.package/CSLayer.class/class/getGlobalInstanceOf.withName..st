private
getGlobalInstanceOf: aClass withName: aSymbol
	
	^ self environment
		at: aSymbol
		ifPresent: [:layer | 
			layer isContextSLayer ifFalse: [self error: 'Global ', aSymbol, ' already exists, cannot create layer with that name.' ].
			layer class == aClass 
				ifTrue: [layer]
				ifFalse: [self resetGlobalInstanceOf: aClass withName: aSymbol]]
		ifAbsent: [self createGlobalInstanceOf: aClass withName: aSymbol].
