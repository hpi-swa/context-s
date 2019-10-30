items
extraBall

	| imageName |
	imageName := 'extraBall'.

	^ BoItem newOn: self game with: self and: imageName
		perform: [ 
			(self game balls) 
				addBall;
				releaseBalls ]