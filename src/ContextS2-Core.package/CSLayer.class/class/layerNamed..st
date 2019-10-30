layers
layerNamed: aSymbol
	"Return the CSLayer-instance associated with aSymbol.
	If a subclass with the according globalLayerName exists, it's singleton-instance is returned.
	Else, an anonymous instance of CSLayer is returned. These objects are created lazily, tracked in a dictionary and freed when become obsolet.e."
	
	^ self
		subclassedLayerNamed: aSymbol
		ifPresent: [:subclassLayer | subclassLayer instance]
		ifAbsent: [self
			getGlobalInstanceOf: CSLayer
			withName: aSymbol ]