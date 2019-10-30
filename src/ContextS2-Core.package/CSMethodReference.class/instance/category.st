accessing
category
	"Answers the class category (cached for reuse via MC and other tools)"
	| actualClass |
	self flag: #environments.
	actualClass := Smalltalk globals at: classSymbol ifPresent: [ :class |
		classIsMeta
			ifTrue: [ class classSide ]
			ifFalse: [ class ] ].
	^ category ifNil: [category := actualClass organization categoryOfElement: self method asSymbol]