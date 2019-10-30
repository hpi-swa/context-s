*contexts2-core
currentLayers
	"Return the layers of the current execution. If no method associated to any layer is on the execution stack, nil is returned.
	Else, the last partial method that has started execution determines the 'current layers'.
	These are the layers that have lead to the activation of this partial method (-> the subset of the currently active layers, that intersects with the partial methods layers).
	This returns (sub)instances of CSLayer.
	If a subclass of CSLayer with the right globalLayerName exists, its singleton-instance is used, else an anonymous instance of CSLayer."
	
	| info partialMethod |
	info := Processor activeProcess csInfo.
	(info proceedIndex ~= nil and: [info proceedIndex > 1])
		ifTrue: [partialMethod := info methodChain at: info proceedIndex - 1]
		ifFalse: ["slow path"
			(thisContext findContextSuchThat: [:ctxt |
				ctxt receiver class ==  CSPartialMethod])
					ifNotNilDo: [:ctxt | partialMethod := ctxt receiver]].
	partialMethod ifNil: [^ nil].
	^ ((info activeLayers intersection: partialMethod layers)
		collect: [ :layername | CSLayer layerNamed: layername ])
			ifEmpty: [ nil ]