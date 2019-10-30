level flow
finishLevel
	
	self currentLevel: self currentLevel + 1.
	(self currentLevel <= self numberOfLevels) 
		ifTrue: [ self loadCurrentLevel ]
		ifFalse: [ self gameWon ]