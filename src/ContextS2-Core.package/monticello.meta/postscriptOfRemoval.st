(PackageInfo named: 'ContextS2-Core') postscriptOfRemoval: '"below, add code to clean up after the unloading of this package"
[(Process respondsTo: #removeInstVarName:)
	ifTrue: [Process removeInstVarName: ''csInfo'']
	ifFalse: [Process removeInstVarNamed: ''csInfo'']] on: Warning do: [:e | e resume].
'!
