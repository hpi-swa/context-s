running
deleteMethod
	
	super deleteMethod.
	CSClassB removeSelector: self generatedSelector.
	CSSubclassB removeSelector: self generatedSelector.