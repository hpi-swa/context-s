testing
test04bExecuteBeforeBaseAfterMethod
	
	self
		layers: #(after before)
		shouldResultIn: #(before base after).