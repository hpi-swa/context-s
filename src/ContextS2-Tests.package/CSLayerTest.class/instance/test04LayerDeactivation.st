layer tests
test04LayerDeactivation
	#l1 withLayerDo: [
		self assert: self activeLayers size = 1.
		self assert: self activeLayers first = #l1.
		#l1 withoutLayerDo: [
			self assert: self activeLayers isEmpty.
			].
		self assert: self activeLayers size = 1.
		self assert: self activeLayers first = #l1.
		].
	self assert: self activeLayers isEmpty.