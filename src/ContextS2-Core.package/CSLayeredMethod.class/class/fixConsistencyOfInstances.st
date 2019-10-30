consistency
fixConsistencyOfInstances
	"self fixConsistencyOfInstances"
	
	super fixConsistencyOfInstances.
	[ CSLayeredMethod allInstances
		do: [ :method || org | "Classify all partial methods so they show up in the CSBrowser"
			org := method methodClass organization.
			method partialMethods do: [:partial |
				(org categoryOfElement: partial asSymbol) ifNil: [org classify: partial asSymbol under: 'partial methods']]].
	] on: Error do: [ :e | Transcript cr; show: 'Fixing partialMethods-categories of all subinstances of CSLayeredMethod failed: ', e ].
	
	[ CSLayeredMethod allInstances
		do: [ :method | "Replace the collection-instance in the CSLayeredMethod-instance by a Set."
			method setPartialMethods: (OrderedCollection withAll: method partialMethods) ].
	] on: Error do: [ :e | Transcript cr; show: 'Fixing partialMethods-collection of all subinstances of CSLayeredMethod failed: ', e ].
	
	[ CSLayeredMethod allInstances
		do: [ :method | "Replace the collection-instance in the CSLayeredMethod-instance by a Set."
			method setPartialMethods: (OrderedCollection withAll: method partialMethods) ].
	] on: Error do: [ :e | Transcript cr; show: 'Fixing partialMethods-collection of all subinstances of CSLayeredMethod failed: ', e ].
	
	[ CSLayeredMethod allInstances
		do: [ :method | "Replace CSLayeredMethods, that do not actually include layered behaviour, by simple CompiledMethods."
			method isLayered ifFalse: [ method becomeCompiledMethod ] ].
	] on: Error do: [ :e | Transcript cr; show: 'Turning all non-layered subinstances of CSLayeredMethod into CompiledMethods failed: ', e ].

	[ CSLayeredMethod allInstances
		do: [ :method | "Cache all partial methods to their layers"
			method flushCache ].
	] on: Error do: [ :e | Transcript cr; show: 'Caching partial methods failed: ', e ].

	[ CSLayeredMethod allInstances
		do: [ :method | "Cache the proceed selector"
			method initializeProceedSelector ].
	] on: Error do: [ :e | Transcript cr; show: 'Caching proceed selector failed: ', e ].