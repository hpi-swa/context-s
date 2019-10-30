user interface
initialExtent
	| baseExtent |
	baseExtent := super initialExtent.
	^ (baseExtent x / 4 * 5)@(baseExtent y)