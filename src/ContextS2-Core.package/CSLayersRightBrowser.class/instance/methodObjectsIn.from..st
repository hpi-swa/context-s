message list
methodObjectsIn: aList from: aClass
	"aList may include symbols that point to CompiledMethods, CSLayeredMethods or CSPartialMethods within CSLayeredMethods of the method dictionary in aClass"
	| partials |
	partials := aClass layeredMethods gather: [:m | m partialMethods].
	^ (aList collect: [:selector | aClass compiledMethodAt: selector ifAbsent: [selector]])
		collect: [:method |
			method class caseOf: {
			[CompiledMethod] -> [method].
			[CSLayeredMethod] -> [method basePartialMethod].
			[ByteSymbol] -> [partials detect: [:m | m asSymbol = method] ifNone: []]}]
			thenSelect: [:m | m notNil]