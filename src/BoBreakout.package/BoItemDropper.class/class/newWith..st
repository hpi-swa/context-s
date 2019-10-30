instance creation
newWith: aGame
	
	| itemDropper |
	
	itemDropper := super newWith: aGame.
	itemDropper game addMorph: itemDropper timer.
	
	^ itemDropper