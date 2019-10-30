bootstrapping support
doesNotUnderstand: aMessage
	"During bootstrap, the message for checking bootstrap might not be compiled, yet"
	aMessage selector = #isBootstrapping ifTrue: [^ true].
	^ super doesNotUnderstand: aMessage