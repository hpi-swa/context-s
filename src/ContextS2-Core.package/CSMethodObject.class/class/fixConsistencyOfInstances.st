consistency
fixConsistencyOfInstances
	"self fixConsistencyOfInstances"
	"Sets the selector of all method-object instances to the selector of their underlying CompiledMethod."
	
	[ self allInstances do: [ :methodObject |
		methodObject selector: methodObject method selector ]
	] on: Error do: [ :e | Transcript cr; show: 'Fixing selectors on all instances of ', self, ' failed: ', e ].
	
	[ self allInstances do: [ :methodObject |
		methodObject selector ifEmpty: [ methodObject methodClass methodDict removeKey: #'' ifAbsent: [] ] ]
	] on: Error do: [ :e | Transcript cr; show: 'Deleting instances of ', self, ' with empty selector failed: ', e ]