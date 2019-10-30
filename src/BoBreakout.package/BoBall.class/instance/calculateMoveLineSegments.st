collision
calculateMoveLineSegments

	| points |
	
	points := self calculateAdaptiveMovePoints.
	
	^ points collect: [ :each | self calculateMoveLineSegmentAt: each ]