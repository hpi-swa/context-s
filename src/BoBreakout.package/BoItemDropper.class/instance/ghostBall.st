items
ghostBall

	| imageName timeout |
	imageName := 'ghostBall'.
	timeout := 8000.

	^ BoItem newOn: self game with: self and: imageName
		perform: [ 
			#ghostBalls activateLayerInCurrentProcess.
			self timer addTask: #ghostBalls execute:
				[#ghostBalls deactivateLayerInCurrentProcess] in: timeout ]