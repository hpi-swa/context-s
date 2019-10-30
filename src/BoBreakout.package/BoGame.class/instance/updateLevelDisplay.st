level loading
updateLevelDisplay

	| levelString |	
	levelString := 'Level '.

	self levelDisplay 
		contents: levelString, self currentLevel;
		comeToFront