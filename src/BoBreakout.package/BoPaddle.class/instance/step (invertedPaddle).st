stepping and presenter
step
	<layer: #invertedPaddle>
	| leftDirection rightDirection |	
	self direction: 0@0.
	leftDirection := -1@0.
	rightDirection := 1@0.
	self leftKeyDown ifTrue: [ self direction: rightDirection ].
	self rightKeyDown ifTrue: [ self direction:  leftDirection ].
	super step.