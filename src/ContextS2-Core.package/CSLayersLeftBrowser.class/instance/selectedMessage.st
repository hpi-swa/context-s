ui-messages
selectedMessage
	"If the selected message is a normal CompiledMethods (the object then is the selector-symbol), use the super-version.
	Else, get the source from the special selected partial method."
	
	| messageName |
	messageName := self selectedMethod.
	messageName ifNil: [ ^ '' ].
	messageName isSymbol ifTrue: [ ^ super selectedMessage ].
	^ messageName getSource "is a CSPartialMethod"