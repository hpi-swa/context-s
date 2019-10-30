collision
addLineFrom: startPoint to: endPoint ifValidInto: aCollection
	
	((self facingToDirection: startPoint) and: [ self facingToDirection: endPoint ]) ifTrue: [ 
		aCollection add: 
			(self calculateBorderLineSegmentBetween: startPoint and: endPoint) ]
	
	