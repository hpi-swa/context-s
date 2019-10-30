collision
calculateBorderLineSegmentsFor: aDirection

	^ super calculateBorderLineSegmentsFor: (aDirection negated)