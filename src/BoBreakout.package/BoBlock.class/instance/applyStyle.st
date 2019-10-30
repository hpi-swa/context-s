layout
applyStyle
	
	self remainingLifes > 1
		ifTrue: [ self applyStrongBlockStyle ]
		ifFalse: [ self applyDefaultStyle ].
	self collisionHandler isBubbleBlock
		ifTrue: [ self applyBubbleBlockStyle ]