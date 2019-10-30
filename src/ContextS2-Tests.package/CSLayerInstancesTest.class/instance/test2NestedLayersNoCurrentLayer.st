testing-current-layer
test2NestedLayersNoCurrentLayer
	
	#a withLayerDo: [
		#b withLayerDo: [
			self assert: self currentLayers isNil ] ].