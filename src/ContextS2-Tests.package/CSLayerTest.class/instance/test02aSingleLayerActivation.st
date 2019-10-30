layer tests
test02aSingleLayerActivation
	#l1 withLayerDo: [
		self assert: self activeLayers notEmpty.
		self assert: self activeLayers first = #l1.
		].
	self assert: self activeLayers isEmpty.