*contexts2-core
layeredMethodDict
	"Have to use fromPairs because sometimes a method symbol may appear twice, and newFrom: with a collection of associations errors in that case, whereas newFromPairs: doesn't"
	^ Dictionary newFromPairs: (((methodDict associations
		gather: [:assoc |
			assoc value isContextSMethod
				ifTrue: [
					(assoc value partialMethods collect: [:m | m asSymbol -> m]),
					{assoc key -> assoc value basePartialMethod}]
				ifFalse: [{assoc}]])
		reject: [:assoc | assoc value isNil])
		gather: [:assoc | {assoc key. assoc value}])