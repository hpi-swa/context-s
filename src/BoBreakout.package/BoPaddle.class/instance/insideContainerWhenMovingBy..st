collision
insideContainerWhenMovingBy: aVector

	| rectangle |
	
	rectangle := Rectangle
		origin: self bounds origin + aVector
		corner: self bounds corner + aVector.
		
	^ self game bounds containsRect: rectangle