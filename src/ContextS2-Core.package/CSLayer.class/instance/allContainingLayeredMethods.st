queries
allContainingLayeredMethods
	
	^ CSLayeredMethod allInstances
		select: [ :method |
			method partialMethods
				anySatisfy: [ :partial | partial layers includes: self layerName ] ]