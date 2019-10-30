initialization
initialize
	
	super initialize.
	self
		currentLevel: 1;
		collisionHandler: BoGameCollisionHandler new;
		loadBackgroundWithName: 'background'