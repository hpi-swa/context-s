running
layers: someLayers shouldResultIn: anArrayOfSymbols
	
	someLayers withLayersDo: [ self a myMethod ].
	self assert: self a executedMethods size = anArrayOfSymbols size.
	self assert: self a executedMethodsArray = anArrayOfSymbols.