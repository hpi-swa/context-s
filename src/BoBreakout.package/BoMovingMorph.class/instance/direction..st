accessing
direction: aVector

	| length |	

	length := (aVector dotProduct: aVector) sqrt.
	length isZero
		ifTrue: [direction := aVector]
		ifFalse: [direction := aVector / length]