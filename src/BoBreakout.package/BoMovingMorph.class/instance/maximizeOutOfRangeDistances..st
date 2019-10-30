collision
maximizeOutOfRangeDistances: aDistancesCollection
	
	aDistancesCollection first negative ifTrue: [ aDistancesCollection at: 1 put: Float fmax ].
	(aDistancesCollection second between: 0 and: 1) ifFalse: [
		aDistancesCollection at: 1 put: Float fmax ].
	
	(self isFirstChecking not) &	(aDistancesCollection anySatisfy: [ :each | each closeTo: 0 ])
		ifTrue: [ aDistancesCollection at: 1 put: Float fmax ]