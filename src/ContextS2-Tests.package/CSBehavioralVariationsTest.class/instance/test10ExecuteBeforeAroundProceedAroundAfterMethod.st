testing
test10ExecuteBeforeAroundProceedAroundAfterMethod
	
	self
		layers: #(before replace proceed1 after)
		shouldResultIn: #(before replace).