collision
calculateNextCollision

	self nextCollisionDistance: Float fmax..
	self nextCollisionPoint: Float fmax @ Float fmax.
	
	self collidableMorphs do: [ :each |
		self checkForEarlierCollisionWith: each]