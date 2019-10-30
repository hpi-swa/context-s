collision
reflect: aMovingMorph from: aCollidableMorph at: aPoint

	| reflect horizontalReflection verticalReflection |	
	horizontalReflection := (1 @ -1).
	verticalReflection := (-1 @ 1).
	
	reflect := horizontalReflection.	
	((aCollidableMorph left closeTo: aPoint x) or: 
		[aCollidableMorph right closeTo: aPoint x]) ifTrue: [
			reflect := verticalReflection ].
	aMovingMorph reflectBy: reflect