collision
facingToDirection: aPoint
	
	^ ((self cachedDotProducts at: aPoint) < self referenceDotProduct)