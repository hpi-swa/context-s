queries
removePartialMethod: aPartialMethod
	
	| priorMethod priorProtocol |
	priorMethod := aPartialMethod method.
	priorProtocol := self methodClass organization categoryOfElement: aPartialMethod asSymbol.
	
	SystemChangeNotifier uniqueInstance doSilently: [
		self methodClass organization removeElement: aPartialMethod asSymbol].

	aPartialMethod method == self baseMethod
		ifTrue: [ baseMethod := nil ]
		ifFalse: [ self partialMethods remove: aPartialMethod ifAbsent: [] ].
		
	self isLayered ifFalse: [ self becomeCompiledMethod ].
	self flushCache.
	
	SystemChangeNotifier uniqueInstance
		methodRemoved: priorMethod selector: aPartialMethod asSymbol inProtocol: priorProtocol class: aPartialMethod methodClass.