queries
partialMethodFor: aLayerName

	^ self partialMethods
		detect: [:method | method layers includes: aLayerName]
		ifNone: []