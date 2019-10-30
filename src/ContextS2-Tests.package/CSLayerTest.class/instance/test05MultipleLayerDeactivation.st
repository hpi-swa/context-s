layer tests
test05MultipleLayerDeactivation
	#(l1 l2 l3) withLayersDo: [
		self assert: self activeLayers size = 3.
		self assert: self activeLayers last = #l3.
		#l2 withoutLayerDo: [
			self assert: self activeLayers size = 2.
			self assert: self activeLayers last = #l3.
			self assert: self activeLayers first = #l1].
		self assert: self activeLayers size = 3.
		self assert: self activeLayers second = #l2.
		#(l1 l2) withoutLayersDo: [
			#l3 withoutLayerDo: [self assert: self activeLayers isEmpty].
			self assert: self activeLayers first = #l3].
		self assert: self activeLayers size = 3.
		].
	self assert: self activeLayers isEmpty.