initialization
initialize 

	| verticalDirection |	
	verticalDirection := 0 @ 1.

	super initialize.
	self 
		direction: verticalDirection;
		speed: self class itemSpeed