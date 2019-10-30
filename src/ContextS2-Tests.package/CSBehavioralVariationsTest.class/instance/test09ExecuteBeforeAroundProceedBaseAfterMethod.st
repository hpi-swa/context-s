testing
test09ExecuteBeforeAroundProceedBaseAfterMethod
	
	self
		layers: #(before proceed1 after)
		shouldResultIn: #(before proceed1before base after proceed1after).