testing
test10aExecuteBeforeAroundProceedAroundAfterMethod
	
	self
		layers: #(after before replace proceed1)
		shouldResultIn: #(before replace after).