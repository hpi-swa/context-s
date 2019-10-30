initialization
initialize

	super initialize.
	self realPosition: super position.
	self moveLineSegments: OrderedCollection new