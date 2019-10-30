component loading
loadComponent: aSymbol

	self activeScreen ifNotNil: [ self removeMorph: self activeScreen ].
	self
		activeScreen: (self screenCatalog at: aSymbol) value;
		addMorph: self activeScreen.
	self screenCatalog at: aSymbol put: self activeScreen.
	self activeScreen onLoad.
	ActiveHand newKeyboardFocus: self mouseFocusTarget