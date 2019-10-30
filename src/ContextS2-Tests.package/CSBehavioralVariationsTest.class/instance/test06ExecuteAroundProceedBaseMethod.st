testing
test06ExecuteAroundProceedBaseMethod
	
	self
		layers: #(proceed1)
		shouldResultIn: #(proceed1before base proceed1after).