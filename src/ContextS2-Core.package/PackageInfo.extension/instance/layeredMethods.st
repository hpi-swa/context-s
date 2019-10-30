*contexts2-core
layeredMethods
	| coreMethods extensionMethods |
	coreMethods := self classesAndMetaClasses gather: [:class | class layeredMethods].
	extensionMethods := (self externalBehaviors gather: [:classOrTrait |
		(self extensionCategoriesForClass: classOrTrait)
			gather: [:cat | (classOrTrait organization listAtCategoryNamed: cat)
				collect: [:selector || method |
					method := classOrTrait layeredMethodDict at: selector.
					method isContextSMethod ifTrue: [method]]]])
		reject: #isNil.
	^ (coreMethods, extensionMethods) gather: [:method |
		(method isKindOf: CSPartialMethod)
			ifTrue: [{CSMethodReference onMethod: method}]
			ifFalse: [method partialMethods collect: [:m |
						CSMethodReference onMethod: m]]]