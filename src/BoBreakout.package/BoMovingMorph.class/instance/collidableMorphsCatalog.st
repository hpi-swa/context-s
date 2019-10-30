collision
collidableMorphsCatalog

	^ IdentityDictionary newFrom: { 
		#block -> [ self game blocks ].
		#paddle -> [ { self game paddle } ].
		#game -> [ { self game } ].
		#ball -> [ self game balls ].
		#item -> [ self game items ] }