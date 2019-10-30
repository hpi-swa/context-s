initialization
initialize

	super initialize.
	self 
		blockCollisionHandler: BoBlockCollisionHandler new;
		bubbleBlockCollisionHandler: BoBubbleBlockCollisionHandler new