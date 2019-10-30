collision
applyCollisionEffectsOf: aCollidableMorph with: aMovingMorph

	(aCollidableMorph remainingLifes - aMovingMorph strength) strictlyPositive ifFalse: [ 
		self applyDestroyEffectsOf: aCollidableMorph with: aMovingMorph ].
	aCollidableMorph decreaseLifesBy: aMovingMorph strength.
