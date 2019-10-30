*contexts2-core
asPartialMethod
	| layer |
	layer := (self pragmas
		detect: [:ea | ea keyword == CSLayeredMethod pragmaKeyword]
		ifNone: [])
		ifNotNilDo: [:pragma || argument |
			pragma arguments size == 1
				ifFalse: [self error: 'Illegal ContextS2-Pragma: Need only one argument.'].
			argument := pragma arguments first.
			argument isArray ifTrue: [argument] ifFalse: [{argument}]].
	(layer isNil or: [layer allSatisfy: #isSymbol])
		ifFalse: [self error: 'Illegal ContextS2-Pragma: Need Symbol or Array of Symbols as parameter.'].
	^ CSPartialMethod on: layer forMethod: self