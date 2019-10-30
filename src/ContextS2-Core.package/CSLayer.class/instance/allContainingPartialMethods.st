queries
allContainingPartialMethods
	
	^ self allContainingLayeredMethods gather: [:layeredMethod |
		layeredMethod partialMethods
			select: [ :partialMethod | partialMethod layers includes: self layerName ]]
