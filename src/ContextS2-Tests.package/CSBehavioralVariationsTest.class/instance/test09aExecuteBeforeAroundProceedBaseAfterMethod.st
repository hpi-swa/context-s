testing
test09aExecuteBeforeAroundProceedBaseAfterMethod
	
	self
		layers: #(proceed1 before after)
		shouldResultIn: #(proceed1before before base after proceed1after).