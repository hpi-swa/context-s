ui
selectedMessageName
	"The result of the super-call might be a CSPartialMethod, "
	
	^ super selectedMessageName ifNotNilDo: #asSymbol