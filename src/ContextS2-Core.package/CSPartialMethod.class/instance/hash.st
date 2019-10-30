comparing
hash
	"see #="
	
	^ (self basicLayers hash bitXor: self selector hash) bitXor: self class hash