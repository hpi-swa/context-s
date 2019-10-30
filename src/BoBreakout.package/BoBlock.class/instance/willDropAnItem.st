item dropping
willDropAnItem

	^ (self itemDropProbability isZero not) and: 
		[ (1 / self itemDropProbability) atRandom = 1 ]