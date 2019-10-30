consistency
fixConsistencyOfInstances
	
	super fixConsistencyOfInstances.
	
	[ CSPartialMethod allSubInstances do: [ :methodObject |
		(methodObject methodClass methodDict at: methodObject selector ifAbsent: []) == methodObject
			ifTrue: [
				methodObject methodClass methodDict removeKey: methodObject selector ifAbsent: [] ] ]
	] on: Error do: [ :e | Transcript cr; show: 'Deleting all instances of CSPartialMethod from method-dictionaries failed: ', e ].
	
	[ CSLayeredMethod allSubInstances do: [ :methodObject |
		methodObject setPartialMethods: (methodObject partialMethods reject: [ :e | e selector isEmpty ])]
	] on: Error do: [ :e | Transcript cr; show: 'Deleting all instances of CSPartialMethod with empty selectors from their respective layered method failed: ', e ].