collision
handleCollisionWith: aMovingMorph and: aCollidableMorph at: aPoint

	(aMovingMorph isBall) ifTrue: [
		self reflect: aMovingMorph from: aCollidableMorph at: aPoint.
		self deflect: aMovingMorph from: aCollidableMorph at: aPoint ].
	(aMovingMorph isItem) ifTrue: [
		self appyItem: aMovingMorph ]