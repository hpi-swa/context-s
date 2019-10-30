accessing
speed: anObject

	anObject isZero ifTrue: [ speed := anObject ]
		ifFalse: [ speed := (anObject min: self class maxSpeed) max: self class minSpeed ]