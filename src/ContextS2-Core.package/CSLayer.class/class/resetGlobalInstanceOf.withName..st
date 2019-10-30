private
resetGlobalInstanceOf: aClass withName: aSymbol
		
	"Delete obsolete CSLayer instances. Kind of a side case, but keeps the system clean."
	self removeGlobalInstanceNamed: aSymbol.
	^ self getGlobalInstanceOf: aClass withName: aSymbol
