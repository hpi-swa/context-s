collision
preCalculateDotProductsFor: aDirection

	| dict |
	
	dict := Dictionary new.
	
	dict at: (self topLeft) 
		put: (aDirection dotProduct: (self topLeft - (self center))).
	dict at: (self topRight) 
		put: (aDirection dotProduct: (self topRight - (self center))).
	dict at: (self bottomRight) 
		put: (aDirection dotProduct: (self bottomRight - (self center))).
	dict at: (self bottomLeft) 
		put: (aDirection dotProduct: (self bottomLeft - (self center))).
	self referenceDotProduct: (dict max).
	self cachedDotProducts: dict
	