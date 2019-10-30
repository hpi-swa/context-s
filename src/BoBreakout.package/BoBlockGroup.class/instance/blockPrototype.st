blocks
blockPrototype
	
	| block |
	
	block := BoBlock newOn: self with: self blockCollisionHandler and: self game items.
	block
		remainingLifes: 1;
		destroySpeed: 0.5;
		itemTypes: {
			#speedDownBalls.
			#speedUpBalls.
			#bubbleBlocks.
			#extraBall.
			#ghostBall.
			#extraLife.
			#invertPaddleControl.
			#loseLife.
			#enlargePaddle.
			#shrinkPaddle.
			#strengthenBalls };
		itemDropProbability: 1 / 2.
		
	^ block