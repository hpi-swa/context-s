instance creation
newAt: aNumber execute: aBlock

	^ self new 
		triggerTime: aNumber;
		action: aBlock;
		yourself
