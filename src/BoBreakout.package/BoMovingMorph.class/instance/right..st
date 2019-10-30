geometry
right: aNumber

	super right: aNumber.
	self position: ((aNumber - self width) @ (self realPosition y))