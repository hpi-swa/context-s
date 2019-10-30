*contexts2-core-override
notifyObservers
	(compiledMethod isCompiledMethod or: [(compiledMethod respondsTo: #isBase) and: [compiledMethod isBase]]) ifTrue: [
		"ORIGINAL CODE"
		SystemChangeNotifier uniqueInstance 
			doSilently: [myClass organization classify: selector under: category].
		priorMethodOrNil isNil
			ifTrue: [SystemChangeNotifier uniqueInstance methodAdded: compiledMethod selector: selector inProtocol: category class: myClass requestor: requestor]
			ifFalse: [SystemChangeNotifier uniqueInstance methodChangedFrom: priorMethodOrNil to: compiledMethod selector: selector inClass: myClass requestor: requestor].
		"The following code doesn't seem to do anything."
		myClass instanceSide noteCompilationOf: selector meta: myClass isClassSide.
		"END ORIGINAL CODE"
	] ifFalse: ["dealing with a partial layer method"	
		SystemChangeNotifier uniqueInstance 
			doSilently: [myClass organization classify: compiledMethod asSymbol under: category].
		priorMethodOrNil isNil
			ifTrue: [SystemChangeNotifier uniqueInstance methodAdded: compiledMethod selector: compiledMethod asSymbol inProtocol: category class: myClass requestor: requestor]
			ifFalse: [SystemChangeNotifier uniqueInstance methodChangedFrom: priorMethodOrNil to: compiledMethod selector: compiledMethod asSymbol inClass: myClass requestor: requestor].
	]
