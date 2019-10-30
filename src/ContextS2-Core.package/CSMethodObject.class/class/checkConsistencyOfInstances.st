consistency
checkConsistencyOfInstances
	"self checkConsistencyOfInstances"
	
	[ self allInstances
		noneSatisfy: [ :method |
			(method methodClass methodDict includes: method) and: [
			method selector isNil or: [ method selector isEmpty
			or: [ method methodClass isNil ] ] ] ]
	] assert.