instance creation
newOn: aBlockManager with: aCollisionHandler and: anItemManager
	
	^ self new
		blocks: aBlockManager;
		collisionHandler: aCollisionHandler;
		items: anItemManager