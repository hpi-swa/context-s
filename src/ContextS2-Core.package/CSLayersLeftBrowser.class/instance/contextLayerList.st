ui-layers
contextLayerList
	
	^ contextLayerList ifNil: [
		contextLayerList := self classListIndex = 0
			ifTrue: [ Array new ] "No class selected"
			ifFalse: [ 
				{ self class allLayersMarker. self class nonLayeredMarker. self class baseMethodsMarker },
				self selectedClassOrMetaClass allInvolvedLayers asArray ] ]