monticello
asMethodDefinition
	"Override, unification happens based on class and selector in MC"
	^ (MCMethodDefinition forMethodReference: self)
		selector: self method asSymbol;
		yourself