accessing
allLayeredMethods: aMethodReference

	^ aMethodReference isContextSMethodReference
		ifFalse: [#()]
		ifTrue: [ |method|
			method := aMethodReference compiledMethod.
			method isPartialMethod
				ifTrue: [#()]
				ifFalse: [method partialMethods collect: [:p | p methodReference]]]
