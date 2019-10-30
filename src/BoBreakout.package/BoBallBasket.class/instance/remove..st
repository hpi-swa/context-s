removing
remove: aBall

	| noStepping |
	noStepping := -1.
	
	aBall remainingStep: noStepping.
	super remove: aBall.
	self ifEmpty: [ 
		self addBall.
		self items removeAll.
		self lifes removeLife ]