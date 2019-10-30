instance creation
newOn: aMorph

	^ self new
		container: aMorph;
		position: aMorph position;
		setup;
		yourself