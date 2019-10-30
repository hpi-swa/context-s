items
loseLife

	| imageName |
	imageName := 'loseLife'.

	^ BoItem newOn: self game with: self and: imageName
		perform: [ 
			self game lifes removeLife ]