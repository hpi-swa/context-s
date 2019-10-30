items
itemTypes

	^ Dictionary newFrom: {
		self class bubbleBlocks -> [ self bubbleBlocks ].
		self class enlargePaddle -> [ self enlargePaddle ].
		self class extraLife -> [ self extraLife ].
		self class extraBall -> [ self extraBall ].
		self class ghostBall -> [ self ghostBall ].
		self class invertPaddleControl -> [ self invertPaddleControl ].
		self class loseLife -> [ self loseLife ].
		self class shrinkPaddle -> [ self shrinkPaddle ].
		self class speedUpBalls -> [ self speedUpBalls ].
		self class speedDownBalls -> [ self speedDownBalls ].
		self class strengthenBalls -> [ self strengthenBalls ] }
		