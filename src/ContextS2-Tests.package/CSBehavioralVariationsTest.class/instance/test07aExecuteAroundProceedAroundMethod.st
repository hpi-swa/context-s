testing
test07aExecuteAroundProceedAroundMethod
	
	self
		layers: #(proceed1 replace)
		shouldResultIn: #(proceed1before replace proceed1after).