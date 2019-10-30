private
createNamed: aSymbol
	"Only internal, for controlled instance creation."
	
	^ self basicNew
		initializeWithName: aSymbol;
		yourself