executing
valueWithReceiver: aReceiver arguments: anArray
	"Memorize in the process-state, that the current method has been started; execute the backing CompiledMethod in the receivers context."
	
	Processor activeProcess csInfo incrementProceedIndex.
	^ [ aReceiver withArgs: anArray executeMethod: self method ]
		ensure: [ Processor activeProcess csInfo decrementProceedIndex ]