collision
handleCollisionWith: aMovingMorph and: aCollidableMorph at: aPoint

	self reflect: aMovingMorph from: aCollidableMorph at: aPoint.
	super handleCollisionWith: aMovingMorph and: aCollidableMorph at: aPoint