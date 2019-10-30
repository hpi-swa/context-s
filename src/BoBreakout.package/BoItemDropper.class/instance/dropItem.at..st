item dropping
dropItem: aSymbol at: aPoint

	| item |
	
	item := ((self itemTypes at: aSymbol) value)
				position: aPoint;
				collisionHandler: self nullCollisionHandler;
				yourself.
				
	self add: item