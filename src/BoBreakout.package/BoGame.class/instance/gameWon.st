level flow
gameWon

	self lifes resetLifes.
	self 
		currentLevel: 1;
		loadCurrentLevel.
	self container loadComponent: #gameWon