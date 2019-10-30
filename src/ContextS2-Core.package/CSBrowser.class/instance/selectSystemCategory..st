superclass hooks
selectSystemCategory: aSymbol
	"Adapt super to deal with actual methods, hence duplicated code"

	aSymbol = selectedSystemCategory ifTrue: [^ self].
	selectedMessageReference := nil.
	messages := nil.
	super selectSystemCategory: aSymbol