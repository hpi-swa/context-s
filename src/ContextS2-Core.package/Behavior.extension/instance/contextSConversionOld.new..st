*contexts2-core
contextSConversionOld: old new: new
	"old can be nil or a CompiledMethod or a CSLayeredMethod. new can be a CompiledMethod or a CSPartialMethod."
	| layeredMethod |
	((CSMethodObject respondsTo: #isBootstrapping) not or: [
		CSMethodObject isBootstrapping]) ifTrue: [^ new].
	layeredMethod := self layeredMethodFrom: old.
	layeredMethod addPartialMethod: new asPartialMethod.
	^ layeredMethod isLayered
		ifTrue: [ layeredMethod ]
		ifFalse: [ new ] "use the CompiledMethod, if LayeredMethod would be useless."