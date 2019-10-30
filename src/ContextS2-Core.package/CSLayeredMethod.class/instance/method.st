accessing
method
	"Use base method, if possible, else use any partial method. Return nil, if not a single partial method is present."
	
	^ self includesBaseMethod
		ifTrue: [ self baseMethod ]
		ifFalse: [ self partialMethods ifNotEmpty: [:methods |  methods anyOne ] ifEmpty: [ nil ] ]