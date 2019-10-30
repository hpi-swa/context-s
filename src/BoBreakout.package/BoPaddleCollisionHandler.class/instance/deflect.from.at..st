collision
deflect: aMovingMorph from: aCollidableMorph at: aPoint

	| distance |	
	distance := (aPoint x - aCollidableMorph center x) / (aCollidableMorph width / 2).	
	aMovingMorph deflectBy: distance @ 0