blocks
strongBlockPrototype
	
	| strongBlock |
	
	strongBlock := BoBlock newOn: self with: self blockCollisionHandler and: self game items.
	strongBlock
		remainingLifes: 2;
		destroySpeed: 1;
		itemTypes: {
			#speedDownBalls.
			#speedUpBalls.
			#bubbleBlocks.
			#extraBall.
			#extraLife.
			#invertPaddleControl.
			#loseLife.
			#enlargePaddle.
			#shrinkPaddle.
			#strengthenBalls };
		itemDropProbability: 1 / 1.
		
	^ strongBlock