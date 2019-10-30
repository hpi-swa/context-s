accessing
addTask: aSymbol execute: aBlock in: aNumber

	| triggerTime task |
	
	triggerTime := Time milliSecondsSinceMidnight + aNumber.
	task := BoTask newAt: triggerTime execute: aBlock.
	self tasks at: aSymbol put: task