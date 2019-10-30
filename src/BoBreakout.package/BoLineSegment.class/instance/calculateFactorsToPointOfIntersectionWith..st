geometry
calculateFactorsToPointOfIntersectionWith: aLineSegment

	|aFactor anotherFactor|
	
	aFactor := self calculateOwnFactorToPointOfIntersectionWith: aLineSegment.
	anotherFactor := aLineSegment calculateOwnFactorToPointOfIntersectionWith: self.
		
	^ {aFactor. anotherFactor}