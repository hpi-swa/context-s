accessing
compiledMethodReplacement
	
	^ self includesAnyPartialMethod ifTrue: [
		self includesBaseMethod
			ifTrue: [ self baseMethod ]
			ifFalse: [ self partialMethods anyOne method ] ]