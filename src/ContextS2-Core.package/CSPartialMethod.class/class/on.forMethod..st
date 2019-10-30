instance creation
on: someLayers forMethod: aMethod
	
	| partial |
	partial := self selector: aMethod selector class: aMethod methodClass.
	aMethod ifNotNil: [partial setMethod: aMethod].
	someLayers ifNotNil: [partial setLayers: someLayers].
	^ partial