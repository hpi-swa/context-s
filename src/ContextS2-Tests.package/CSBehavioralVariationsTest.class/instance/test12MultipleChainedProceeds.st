testing
test12MultipleChainedProceeds
	
	self
		layers: #(proceed1 proceed2)
		shouldResultIn: #(proceed1before proceed2before base proceed2after proceed1after).