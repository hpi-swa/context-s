printing
printOn: aStream
	"Print the receiver on a stream"
	| actualClass |
	actualClass := Smalltalk globals at: classSymbol ifPresent: [ :class |
		classIsMeta
			ifTrue: [ class classSide ]
			ifFalse: [ class ] ].
	aStream
		nextPutAll: 'a ';
		nextPutAll: self class name;
		nextPutAll: ' ', actualClass name, ' >> ', self methodSymbol.