accessing
destroySpeed

	^ destroySpeed ifNil: [ destroySpeed := self class destroySpeed ]