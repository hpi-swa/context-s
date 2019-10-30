collision
reflect: aMovingMorph from: aCollidableMorph at: aPoint

	| reflect horizontalReflection verticalReflection |	
	horizontalReflection := (1 @ -1).
	verticalReflection := (-1 @ 1).
	
	reflect := horizontalReflection.	
	((aPoint x closeTo: aCollidableMorph left) or: 
		[aPoint x closeTo: aCollidableMorph right]) ifTrue: [ reflect := verticalReflection ].		
	aMovingMorph reflectBy: reflect