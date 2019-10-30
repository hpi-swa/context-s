items
invertPaddleControl

	| imageName timeout |
	imageName := 'invertPaddle'.
	timeout := 8000.

	^ BoItem newOn: self game with: self and: imageName
		perform: [ 
			#invertedPaddle activateLayerInCurrentProcess.
			self timer addTask: #invertDirection execute:
				[#invertedPaddle deactivateLayerInCurrentProcess] in: timeout ]