testing
test13aMultipleChainedProceedsWithoutBase
	
	self
		layers: #(replace proceed1 proceed2)
		shouldResultIn: #(replace).