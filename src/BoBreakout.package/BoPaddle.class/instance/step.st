stepping and presenter
step

	| leftDirection rightDirection |	
	self direction: 0@0.
	leftDirection := -1@0.
	rightDirection := 1@0.
	self leftKeyDown ifTrue: [ self direction: leftDirection ].
	self rightKeyDown ifTrue: [ self direction:  rightDirection ].
	super step.