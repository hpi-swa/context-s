collision
calculateSimplifiedDirection

	| simplifiedDirection |
	
	simplifiedDirection := self direction sign.
	(simplifiedDirection x isZero) ifTrue: [ simplifiedDirection := ( 1 @ simplifiedDirection y) ].
	(simplifiedDirection y isZero) ifTrue: [ simplifiedDirection := ( simplifiedDirection x @ 1) ].
	
	^ simplifiedDirection