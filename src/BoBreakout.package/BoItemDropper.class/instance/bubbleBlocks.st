items
bubbleBlocks

	| imageName |
	imageName := 'bubbleBlocks'.

	^ BoItem newOn: self game with: self and: imageName 
		perform: [ 
			#bubbleBlocks activateLayerInCurrentProcess.
			self timer addTask: #bubbleBlocks execute: 
				[#bubbleBlocks deactivateLayerInCurrentProcess] in: 3500 ]