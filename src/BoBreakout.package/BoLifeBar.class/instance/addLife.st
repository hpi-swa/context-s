adding
addLife

	| life positionY positionX |
	
	life := self createLife.
	positionY := self game top + self class lifeSpacing.
	positionX := self game right - ((self size + 1) * (self class lifeSpacing + life width)).
	life position: positionX@positionY.
	self add: life