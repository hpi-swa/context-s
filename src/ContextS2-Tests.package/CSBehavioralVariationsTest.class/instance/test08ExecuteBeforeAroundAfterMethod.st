testing
test08ExecuteBeforeAroundAfterMethod
	
	self
		layers: #(before replace after)
		shouldResultIn: #(before replace).