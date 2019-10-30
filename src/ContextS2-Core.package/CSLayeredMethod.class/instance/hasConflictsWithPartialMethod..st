accessing
hasConflictsWithPartialMethod: aPartialMethod
	| method |
	method := self partialMethods
			detect: [:m | m layers ~= aPartialMethod layers and: [
						m layers includesAnyOf: aPartialMethod layers]]
			ifNone: [^ false].
	^ (self confirm: 'This will override another method that defines the layers ',
					(method layers intersection: aPartialMethod layers) printString)
		ifTrue: [self partialMethods remove: method. false]
		ifFalse: [true]