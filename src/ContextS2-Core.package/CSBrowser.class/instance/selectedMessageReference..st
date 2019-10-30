accessing
selectedMessageReference: aMethodReference
	"Make the given selector be the selected message name"

	selectedMessageReference := aMethodReference.
	self selectMessageNamed: (aMethodReference ifNotNil: [:method | method methodSymbol]).
	self changed: #selectedMessageReference. "inform interested parties"
	self changed: #messageList.