initialization
initializeLifes

	self lifes: (BoLifeBar newWith: self).	
	self balls lifes: self lifes.
	self lifes resetLifes