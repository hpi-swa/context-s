accessing
incrementProceedIndex
	proceedIndex == nil ifTrue: [proceedIndex := 1].
	proceedIndex := proceedIndex + 1.