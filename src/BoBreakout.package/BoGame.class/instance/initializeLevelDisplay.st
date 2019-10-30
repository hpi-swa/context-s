initialization
initializeLevelDisplay

	self levelDisplay: StringMorph new.
	self levelDisplay 
		position: (self left + 4) @ (self top + 4);
		font: ((TextStyle default fontOfSize: 36) emphasized: 1).
	self addMorph: self levelDisplay