level flow
gameOver

	self lifes resetLifes.
	self 
		currentLevel: 1;
		loadCurrentLevel.
	self container loadComponent: #gameOver