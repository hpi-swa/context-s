consistency
checkConsistencyOfInstances
	"self checkConsistencyOfInstances"
	
	super checkConsistencyOfInstances.
	[ CSLayeredMethod allInstances
		allSatisfy: [ :method |
			method partialMethods class == OrderedCollection ]
	] assert.

	[ CSLayeredMethod allInstances
		allSatisfy: [ :method |
			(method isLayered) or: [
			(method methodClass methodDict includes: method) not] ]
	] assert.