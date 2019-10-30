collision
collidableMorphs
	
	| collidableMorphs |
	
	collidableMorphs := OrderedCollection new.
	self collidesWith do: [ :collidableMorph | 
		collidableMorphs addAll: (self collidableMorphsCatalog at: collidableMorph) value ].

	^ collidableMorphs