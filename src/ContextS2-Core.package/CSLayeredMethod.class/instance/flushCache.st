caching
flushCache

	layerDict := IdentityDictionary newFrom: (self allInvolvedLayers
		collect: [:layer | layer -> (self partialMethodFor: layer)]).