geometry
bottomLeft: aPoint

	super bottomLeft: aPoint.
	self position: ((aPoint x) @ (aPoint y - self height))