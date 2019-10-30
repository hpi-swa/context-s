geometry
bottomRight: aPoint

	super bottomRight: aPoint.
	self position: ((aPoint x - self width) @ (aPoint y - self height))