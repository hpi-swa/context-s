comparing
= anotherPartialMethod
	"see #hash"
	
	^ anotherPartialMethod class == self class
	and: [self basicLayers = anotherPartialMethod basicLayers
	and: [self selector = anotherPartialMethod selector
	and: [self methodClass = anotherPartialMethod methodClass]]]