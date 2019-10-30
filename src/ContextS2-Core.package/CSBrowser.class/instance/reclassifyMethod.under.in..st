drag and drop
reclassifyMethod: method under: category in: targetClass
	
	| oldCat element |
	element := method asSymbol.
	oldCat := targetClass organization categoryOfElement: element.
	oldCat = category ifTrue: [^ self].
	" We have to do a doSilently:/trigger: dance manuall here, as classify:under: tries to
	determine the selector for the RecategorizedEvent form the method, which does not work
	the way we want. Also, we already *know* the selector."
	SystemChangeNotifier uniqueInstance
		doSilently: [targetClass organization classify: element under: category];
		trigger: (RecategorizedEvent 
			selector: element
			method: method
			protocol: category
			class: targetClass
			oldProtocol: oldCat)