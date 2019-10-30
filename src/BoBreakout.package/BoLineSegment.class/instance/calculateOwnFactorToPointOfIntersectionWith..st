geometry
calculateOwnFactorToPointOfIntersectionWith: aLineSegment

	| aFactor dividend |
	
	aFactor := Float fmax.
	dividend := self calculateDividendForIntersectionWith: aLineSegment.
	dividend isZero ifFalse: [ 
		aFactor := (((aLineSegment point x - self point x) * aLineSegment vector y) - 
					((aLineSegment point y - self point y) * aLineSegment vector x)) 
					/ dividend ].		
						
	^ aFactor