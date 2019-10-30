movement
randomDirection

	| angle |
	
	angle := (60 atRandom + self class minReleaseAngle) degreesToRadians.
	self direction: (angle cos * #(1 -1) atRandom) @ (angle sin negated)