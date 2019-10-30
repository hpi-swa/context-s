collision
calculateMoveLineSegmentAt: aPoint

	| lineSegment |
	
	lineSegment := BoLineSegment new.	
	lineSegment vector: self moveVector.
	lineSegment point: aPoint.
	
	^ lineSegment