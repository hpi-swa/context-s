collision
calculateAdaptiveMovePoints

	| angles |
	
	angles := { 
		0. 
		(( 1 / 4 ) * Float pi). 
		(( 1 / 2 ) * Float pi). 
		(( -3 / 8 ) * Float pi). 
		(( 7 / 8 ) * Float pi) }.
	
	^ angles collect: [ :each | self calculateAdaptiveMovePointWith: each ]