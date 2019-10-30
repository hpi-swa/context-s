collision
checkForEarlierCollisionWith: aMorph

	| lineSegments |
	
	lineSegments := self getLineSegmentsForCollisionWith: aMorph.	
	lineSegments do: [ :lineSegment | 
		self checkForEarlierCollisionWith: lineSegment of: aMorph ]