consistency
checkConsistencyOfInstances
	
	super checkConsistencyOfInstances.
	
	[ CSPartialMethod allInstances noneSatisfy: [ :method |
		(method methodClass methodDict at: method selector ifAbsent: [])
			== method ]
	] assert.
	
	"TODO another helpfull check would be to check, that no partial methods return true on the #isBase message..."
	"TODO Yet another check would be to check, that instances of partialMEthod, that return true from #isBase really include the layer: pragma in their CompiledMethod"