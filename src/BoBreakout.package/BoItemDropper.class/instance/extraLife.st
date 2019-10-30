items
extraLife

	| imageName |
	imageName := 'extraLife'.

	^ BoItem newOn: self game with: self and: imageName
		perform: [ 
			self game lifes addLife ]