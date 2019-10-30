*contexts2-core
activateLayersInCurrentProcess
	
	| layerNames activeLayers |
	layerNames := self collect: #layerName.
	activeLayers := Processor activeProcess csInfo activeLayers.
	^ Processor activeProcess csInfo activeLayers: (activeLayers, layerNames) asSet asArray