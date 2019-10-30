movement
releaseBalls 

	self do: [ :ball | ball speed isZero ifTrue: [ ball releaseBall ] ]