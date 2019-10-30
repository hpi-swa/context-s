geometry
calculateDividendForIntersectionWith: aLineSegment
	
	^ ((self vector x * aLineSegment vector y) - (self vector y * aLineSegment vector x))