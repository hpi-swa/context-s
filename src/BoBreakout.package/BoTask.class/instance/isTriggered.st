triggering
isTriggered

	| trigger |
	
	trigger := false.
	(self triggerTime <= Time milliSecondsSinceMidnight) ifTrue: [ trigger := true ].
	trigger ifTrue: [ self trigger ].
	^ trigger