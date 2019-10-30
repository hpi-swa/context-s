*contexts2-core-instance creation-override
generateMethodFromNode: aMethodNode trailer: bytes
	
	| method |
	method := aMethodNode generate: bytes.
	(method pragmas anySatisfy: [:each | each keyword = CSLayeredMethod pragmaKeyword ])
		ifTrue: [method := method asPartialMethod].
	^ self method: method node: aMethodNode.