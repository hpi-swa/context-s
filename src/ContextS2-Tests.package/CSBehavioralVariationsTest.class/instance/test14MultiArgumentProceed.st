testing
test14MultiArgumentProceed
	
	#(someLayer someLayer2) withLayersDo: [ self assert: 19 = (CSClassA new myMethod: 12 and: 5) ].