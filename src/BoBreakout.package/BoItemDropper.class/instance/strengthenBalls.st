items
strengthenBalls

	| imageName |
	imageName := 'strengthenBall'.

	^ BoItem newOn: self game with: self and: imageName
		perform: [#strongBalls activateLayerInCurrentProcess]