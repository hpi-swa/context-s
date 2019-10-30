geometry
topRight: aPoint

	super topRight: aPoint.
	self position: ((aPoint x - self width) @ (aPoint y))