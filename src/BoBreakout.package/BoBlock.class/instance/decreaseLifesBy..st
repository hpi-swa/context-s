accessing
decreaseLifesBy: aNumber

	self remainingLifes: self remainingLifes - aNumber.
	self remainingLifes isZero ifTrue: [ self remove ]