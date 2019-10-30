level loading
loadCurrentLevel
	
	self paddle startOver.
	self blocks removeAll.
	self balls resetBalls.
	self items removeAll.
	self 
		parseLevel: self currentLevel;
		updateLevelDisplay.
	self lifes bringAllToFront