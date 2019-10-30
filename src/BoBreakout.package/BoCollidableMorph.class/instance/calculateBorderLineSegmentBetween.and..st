collision
calculateBorderLineSegmentBetween: aPoint and: anotherPoint

	| lineSegment |
	
	lineSegment := BoLineSegment new.
	lineSegment point: aPoint.
	lineSegment vector: anotherPoint - aPoint.
	
	^ lineSegment