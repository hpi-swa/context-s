items
speedDownBalls

	| imageName |
	imageName := 'speedDown'.

	^ BoItem newOn: self game with: self and: imageName
		perform: [#speedyBalls deactivateLayerInCurrentProcess]