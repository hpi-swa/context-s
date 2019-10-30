testing
test13MultipleChainedProceedsWithoutBase
	
	self
		layers: #(proceed1 proceed2 replace)
		shouldResultIn: #(proceed1before proceed2before replace proceed2after proceed1after).