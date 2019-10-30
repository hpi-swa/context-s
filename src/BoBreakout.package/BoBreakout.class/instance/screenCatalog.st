accessing
screenCatalog

	^ screenCatalog ifNil: [ screenCatalog := IdentityDictionary newFrom: {
		self class creditsScreen -> [ BoCreditsScreen newOn: self ].
		self class menuScreen -> [ BoMenuScreen newOn: self ].
		self class gameScreen -> [ BoGameScreen newOn: self ].
		self class gameWonScreen -> [ BoGameWonScreen newOn: self ].
		self class gameOverScreen -> [ BoGameOverScreen newOn: self ] } ]