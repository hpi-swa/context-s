*contexts2-core
cs2FileOutMethod: meth called: aSelector of: aClass on: stream
	
	(meth isKindOf: CSLayeredMethod)
		ifTrue: [ meth partialMethods do: [ :partialMethod | self cs2FileOutCompiledMethod: partialMethod method called: aSelector of: aClass on: stream ] ]
		ifFalse: [ self cs2FileOutCompiledMethod: meth called: aSelector of: aClass on: stream ]