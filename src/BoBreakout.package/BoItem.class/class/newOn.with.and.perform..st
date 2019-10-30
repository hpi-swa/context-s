instance creation
newOn: aGame with: anItemManager and: aString perform: aBlock

	^ self new
		game: aGame;
		items: anItemManager;
		effectBlock: aBlock;
		loadBackgroundWithName: 'items', aString;
		yourself