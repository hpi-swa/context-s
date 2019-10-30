testing
test04aExecuteBeforeBaseAfterMethod
	
	self
		layers: #(before after)
		shouldResultIn: #(before base after).