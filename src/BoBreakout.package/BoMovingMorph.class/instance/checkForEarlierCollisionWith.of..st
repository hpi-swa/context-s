collision
checkForEarlierCollisionWith: aLineSegment of: aMorph

	| distances |
	
	distances := aLineSegment first calculateFactorsToPointOfIntersectionWith:
					aLineSegment second.
	self maximizeOutOfRangeDistances: distances.
	(distances first < self nextCollisionDistance) ifTrue: [ 
		self nextCollisionDistance: distances first.
		self objectOfCollision: aMorph.
		self nextCollisionPoint: 
			(aLineSegment first point) + 
			(self nextCollisionDistance * (aLineSegment first vector)) ]