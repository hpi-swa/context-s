converting
asSymbol

	^ self isBase
		ifTrue: [self selector asSymbol]
		ifFalse: [self printString asSymbol]