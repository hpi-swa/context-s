*contexts2-core
allInvolvedLayers
	
	^ (self layeredMethods gather: [ :each | each allInvolvedLayers ]) asSet