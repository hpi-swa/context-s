collision
applyDestroyEffectsOf: aCollidableMorph with: aMovingMorph
	
	aCollidableMorph handleItemDrop.
	super applyDestroyEffectsOf: aCollidableMorph with: aMovingMorph