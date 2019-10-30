private
removeGlobalInstanceNamed: aSymbol
	
	self environment at: aSymbol ifPresent: [:global |
		global isContextSLayer
			ifTrue: [self environment removeKey: aSymbol]
			ifFalse: [self error: 'Global ', aSymbol, ' is not an instance of CSLayer']].