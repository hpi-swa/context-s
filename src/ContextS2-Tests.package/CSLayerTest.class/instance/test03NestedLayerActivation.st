layer tests
test03NestedLayerActivation
	#l1 withLayerDo: [
		self assert: self activeLayers notEmpty.
		self assert: self activeLayers first = #l1.
		#l1 withLayerDo: [
			self assert: self activeLayers size = 1.
			self assert: self activeLayers first = #l1.
			#l1 withLayerDo: [
				self assert: self activeLayers size = 1.
				self assert: self activeLayers first = #l1.
				]
			].
		self assert: self activeLayers size = 1.
		self assert: self activeLayers first = 'l1'.
		].
	self assert: self activeLayers isEmpty.