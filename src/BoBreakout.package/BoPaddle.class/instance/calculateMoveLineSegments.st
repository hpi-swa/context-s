collision
calculateMoveLineSegments

	| segmentContainer |
	
	segmentContainer := OrderedCollection new.
	
	(self direction x negative) ifTrue: [
		segmentContainer add: ( self calculateMoveLineSegmentAt: self topLeft ).
		segmentContainer add: ( self calculateMoveLineSegmentAt: self bottomLeft ) ] 
	ifFalse: [
		segmentContainer add: ( self calculateMoveLineSegmentAt: self topRight ).
		segmentContainer add: ( self calculateMoveLineSegmentAt: self bottomRight ) ].
	
	^ segmentContainer