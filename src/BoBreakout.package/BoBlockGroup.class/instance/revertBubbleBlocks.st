effects
revertBubbleBlocks
	
	self 
		setCollisionHandlerForAll: self blockCollisionHandler;
		do: [ :block | block applyStyle ]