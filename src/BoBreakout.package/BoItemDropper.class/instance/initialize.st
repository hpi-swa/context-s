initialization
initialize

	super initialize.
	self 
		timer: BoTimer new;
		nullCollisionHandler: BoNullCollisionHandler new