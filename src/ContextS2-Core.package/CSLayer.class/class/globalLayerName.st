subclassed layers
globalLayerName
	"The name of the layer to be accessed as a global variable. Is accessible as soon as instance has been invoked."
	"Should be overwritten, but we provide a convenient name based on the class name
		FBFooBarLayer -> #fbfoobar
		Foolayer -> #foo
		Bar -> #bar
		Layer -> #'<unknown>'
		CSLayer (this class) -> error, because of singleton instances.
	"
	| lowercaseName |
	self name = #CSLayer ifTrue: [self error: 'Cannot access singleton-instance of CSLayer itself.'].
	lowercaseName := self name asLowercase.
	^ ((lowercaseName endsWith: 'layer')
		ifTrue: [(lowercaseName allButLast: 5) ifEmpty: [#'<unknown>']]
		ifFalse: [lowercaseName]) asSymbol