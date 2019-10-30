*contexts2-core
cs2FileOutCompiledMethod: compiledMethod called: aSelector of: aClass on: aStream
	
	self
		cs2FileOutMultiPart: 
			{ 
			aClass name, ' methodsFor: ''', (aClass organization categoryOfElement: aSelector), ''''.
			compiledMethod getSource
			}
		on: aStream.