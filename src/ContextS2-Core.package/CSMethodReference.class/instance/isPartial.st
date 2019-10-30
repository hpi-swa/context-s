as yet unclassified
isPartial

	^ self compiledMethod
		ifNil: [false]
		ifNotNil: [:cm |
			cm isPartialMethod]