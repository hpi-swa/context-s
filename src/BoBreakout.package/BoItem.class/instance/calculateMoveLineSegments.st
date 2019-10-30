collision
calculateMoveLineSegments

	| segmentContainer |
	
	segmentContainer := OrderedCollection new.
	
	segmentContainer add: (self calculateMoveLineSegmentAt: self bottomRight).
	segmentContainer add: (self calculateMoveLineSegmentAt: self bottomLeft).
	
	^ segmentContainer