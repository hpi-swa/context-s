collision
reflect: aMovingMorph from: aCollidableMorph at: aPoint

	| reflect horizontalReflection verticalReflection |	
	horizontalReflection := (1 @ -1).
	verticalReflection := (-1 @ 1).
	
	reflect := verticalReflection.
	(aPoint y closeTo: aCollidableMorph top) ifTrue: [ 
		reflect := horizontalReflection ].
	
	aMovingMorph reflectBy: reflect