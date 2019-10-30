consistency
checkAllInstances
	
	Smalltalk garbageCollect. "As the check/fix methods use allInstances/allSubInstances, we should try to collect all obsolete instances."
	^ CSMethodObject allSubclassesDo: #checkConsistencyOfInstances