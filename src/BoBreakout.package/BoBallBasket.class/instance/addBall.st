adding
addBall
	
	| ball |
	
	ball := BoBall newOn: self game with: self.	
	ball
		collisionHandler: self collisionHandler;
		startOverAbove: self paddle.

	self add: ball