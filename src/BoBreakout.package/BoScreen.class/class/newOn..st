instance creation
newOn: aMorph

	^ self new
		parent: aMorph;
		position: aMorph position;
		setup;
		yourself