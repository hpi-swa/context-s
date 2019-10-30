testing
isLayeredMethod: aMethodReference

	^ aMethodReference isContextSMethodReference
		ifFalse: [false]
		ifTrue: [aMethodReference isPartial not]