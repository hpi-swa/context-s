message list
messageObjectsList
	| list |
	self selectedClassOrMetaClass ifNil: [^ #()].
	list := self methodObjectsIn: super messageList from: self selectedClassOrMetaClass.
	^ self selectedLayerSymbol
		caseOf: {[self class nonLayeredMarker] -> [self nonLayeredMessagesFrom: list].
	 				[self class allLayersMarker] -> [self allLayersAndMethodsFrom: list].
	 				[self class baseMethodsMarker] -> [self baseMethodsFrom: list]}
		otherwise: [self messagesInLayer: self selectedLayerSymbol from: list]