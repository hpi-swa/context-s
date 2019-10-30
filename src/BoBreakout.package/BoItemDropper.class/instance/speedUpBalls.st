items
speedUpBalls

	| imageName |	
	imageName := 'speedUp'.

	^ BoItem newOn: self game with: self and: imageName
		perform: [#speedyBalls activateLayerInCurrentProcess]