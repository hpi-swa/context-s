collision
createAllCombinationsOf: anOrderedCollection and: anotherOrderedCollection

	| result |
	
	result := OrderedCollection new.
	anOrderedCollection do: [ :each | 
		result addAll: (anotherOrderedCollection collect: [ :any | {each. any} ]) ].
	
	^ result