adding
addBlockAt: aPoint as: aCharacter

	| block |
	
	block := (self blockTypes at: aCharacter) value.
	block position: aPoint.
	self add: block