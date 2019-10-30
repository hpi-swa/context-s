layer list
contextLayerList
	
	^ self selectedClassOrMetaClass
		ifNil: [#()]
		ifNotNilDo: [:class |
			{ self class allLayersMarker.
			self class nonLayeredMarker.
			self class baseMethodsMarker },
			self selectedClassOrMetaClass allInvolvedLayers asArray ]