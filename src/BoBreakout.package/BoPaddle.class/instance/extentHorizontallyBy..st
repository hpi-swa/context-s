effects
extentHorizontallyBy: aNumber

	| oldWidth |
	
	oldWidth := self width.
	self increaseWidthBy: aNumber.
	self offsetExtensionBy: (self width - oldWidth)