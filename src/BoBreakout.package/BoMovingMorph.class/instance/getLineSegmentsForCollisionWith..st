collision
getLineSegmentsForCollisionWith: aCollidableMorph

	| morphLineSegments movingObjectLineSegments |
	
	movingObjectLineSegments := self moveLineSegments.
	morphLineSegments := aCollidableMorph calculateBorderLineSegmentsFor: 
								self direction.

	^ self createAllCombinationsOf: movingObjectLineSegments and: morphLineSegments