effects
offsetExtensionBy: aNumber

	| x delta |
	
	x := ((self left - (aNumber / 2)) max: 0) min: (self game right - self width).
	delta := (x - self left) @ 0.
	(self insideContainerWhenMovingBy: delta) ifTrue: [ 
		self position: self position + delta ]