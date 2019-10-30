initialization
initializeStartButton
	
	| position |
	
	position := (self center x - (self class buttonExtent x / 2)) @ (self position y + 375).
	self addMorph: (SimpleButtonMorph new
		position: position;
		target: self parent;
		arguments: {#game};
		actionSelector: #loadComponent:;
		label: 'Start' font: Preferences windowTitleFont;
		extent: self class buttonExtent;
		color: Color green;
		yourself)