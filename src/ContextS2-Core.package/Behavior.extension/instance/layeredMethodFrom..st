*contexts2-core
layeredMethodFrom: oldMethod
	"oldMethod can be nil, a CompiledMethod, a CSLayeredMethod or a CSPartialMethod"
	oldMethod ifNil: [^ CSLayeredMethod new].
	^ oldMethod class == CSLayeredMethod
		ifFalse: [CSLayeredMethod new
					addPartialMethod: oldMethod asPartialMethod;
					yourself]
		ifTrue: [oldMethod]