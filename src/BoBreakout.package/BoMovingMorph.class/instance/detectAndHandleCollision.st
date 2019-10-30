collision
detectAndHandleCollision

	self 
		remainingStep: 1;
		isFirstChecking: true.
	[ self remainingStep strictlyPositive ] whileTrue: [
		self 
			moveLineSegments: self calculateMoveLineSegments;
			calculateNextCollision;
			moveRelativeBy: (self nextCollisionDistance min: self remainingStep);
			remainingStep: self remainingStep - self nextCollisionDistance.
		self remainingStep positive ifTrue: [ self handleCollision ].
		self isFirstChecking: false ]