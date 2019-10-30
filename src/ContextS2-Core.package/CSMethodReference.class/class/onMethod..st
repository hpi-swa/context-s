instance creation
onMethod: aMethod

	^ (self class: aMethod methodClass selector: aMethod selector)
		method: aMethod;
		yourself