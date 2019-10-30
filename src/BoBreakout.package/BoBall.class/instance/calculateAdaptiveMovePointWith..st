collision
calculateAdaptiveMovePointWith: anAngle

	| radius simplifiedDirection |
	
	radius := self width / 2.
	simplifiedDirection := self calculateSimplifiedDirection.
	
	^ self center + ((simplifiedDirection x * radius * anAngle cos) @ 
		(simplifiedDirection y * radius * anAngle sin))