collision
handleCollisionWith: aMovingMorph and: aCollidableMorph at: aPoint

	aMovingMorph isBall 
		ifTrue: [ self reflect: aMovingMorph from: aCollidableMorph at: aPoint ]
		ifFalse: [ aMovingMorph direction: (0 @ 0) ].
	
	(aPoint y >= aCollidableMorph bottom) ifTrue: [
		aMovingMorph remove ]