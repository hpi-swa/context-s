(PackageInfo named: 'ContextS2-Core') preamble: '"below, add code to be run before the loading of this package"
[(Process respondsTo: #addInstVarName:)
	ifTrue: [Process addInstVarName: ''csInfo'']
	ifFalse: [Process addInstVarNamed: ''csInfo'']]
	 on: Warning do: [:e | e resume].
'!
