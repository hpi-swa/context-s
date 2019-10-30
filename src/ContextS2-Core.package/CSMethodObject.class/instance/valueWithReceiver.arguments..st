executing
valueWithReceiver: aReceiver arguments: anArrayOfObjects
	"This message is sent, when the method-object has to execute itself."
	
	^ self subclassResponsibility