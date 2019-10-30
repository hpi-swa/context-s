layer tests
test02bSingleLayerActivation
	#(l1) withLayersDo: [
		self assert: self activeLayers notEmpty.
		self assert: self activeLayers first = #l1.
		].
	self assert: self activeLayers isEmpty.