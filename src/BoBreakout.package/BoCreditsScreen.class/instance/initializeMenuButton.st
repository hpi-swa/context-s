initialization
initializeMenuButton
	
	| position |
	
	position := (self center x - (self class buttonExtent x / 2)) @ (self position y + 450).
	self addMorph: (SimpleButtonMorph new
		position: position;
		target: self parent;
		arguments: {#menu};
		actionSelector: #loadComponent:;
		label: 'Menu' font: Preferences windowTitleFont;
		extent: self class buttonExtent;
		color: Color lightGray;
		yourself)