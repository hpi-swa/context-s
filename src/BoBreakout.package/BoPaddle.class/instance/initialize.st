initialization
initialize 

	| imageName |	
	imageName := 'paddle80'.
	
	super initialize.
	self
		collisionHandler: BoPaddleCollisionHandler new;
		speed: self class speed;
		loadBackgroundWithName: imageName 