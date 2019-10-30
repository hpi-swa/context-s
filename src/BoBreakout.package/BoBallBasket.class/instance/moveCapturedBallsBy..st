movement
moveCapturedBallsBy: aVector

	self do: [ :ball | ball isCaptured ifTrue: [ ball moveBy: aVector ] ]