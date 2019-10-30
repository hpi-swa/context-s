collision
calculateBorderLineSegmentsFor: aDirection

	| lineSegments |
	
	lineSegments := OrderedCollection new.
	
	self preCalculateDotProductsFor: aDirection.	
	self addLineFrom: self topLeft to: self topRight 
		ifValidInto: lineSegments.		
	self addLineFrom: self topRight to: self bottomRight 
		ifValidInto: lineSegments.		
	self addLineFrom: self bottomRight to: self bottomLeft 
		ifValidInto: lineSegments.		
	self addLineFrom: self bottomLeft to: self topLeft 
		ifValidInto: lineSegments.
		
	^ lineSegments