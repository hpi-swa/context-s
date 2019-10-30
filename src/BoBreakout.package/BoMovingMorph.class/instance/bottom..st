geometry
bottom: aNumber

	super bottom: aNumber.
	self position: ((self realPosition x) @ (aNumber - self height))