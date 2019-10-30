layer tests
test06LayerDeactivationInNonLocalReturns
	self assert: self activeLayers isEmpty.
	self deny: CSClassA new nonLocalReturn.
	self assert: self activeLayers isEmpty.