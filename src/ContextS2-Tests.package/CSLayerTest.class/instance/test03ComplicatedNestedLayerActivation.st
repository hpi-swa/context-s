layer tests
test03ComplicatedNestedLayerActivation
	#l1 withLayerDo: [
		self assert: self activeLayers notEmpty.
		self assert: self activeLayers first = #l1.
		#(l1 l2 l3) withLayersDo: [
			self assert: self activeLayers size = 3.
			self assert: self activeLayers first = #l1.
			self assert: self activeLayers last = #l3.
			#l1 withoutLayerDo: [
				self assert: self activeLayers size = 2.
				self assert: self activeLayers first = #l2.
				self assert: self activeLayers last = #l3.
				].
			self assert: self activeLayers size = 3.
			self assert: self activeLayers first = #l1.
			self assert: self activeLayers last = #l3.
			].
		self assert: self activeLayers size = 1.
		self assert: self activeLayers first = 'l1'.
		].
	self assert: self activeLayers isEmpty.