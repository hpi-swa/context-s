effects
increaseWidthBy: aNumber

	| newWidth |
	
	newWidth := ((self width + aNumber) max: self class minWidth) min: self class maxWidth.
	self loadBackgroundWithName: (self baseFileName, newWidth)