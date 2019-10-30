*contexts2-core-adding/removing methods-override
basicAddSelector: selector withMethod: compiledMethod 
	"Add the message selector with the corresponding compiled method to the receiver's method dictionary. Do this without sending system change notifications"
	
	| oldMethodOrNil method |
	oldMethodOrNil := self lookupSelector: selector.
	"Empty symbols are used by Object >> withArgs:executeMethod: to temporarily store a method in the methodDict; avoid creating the LayeredMethod."
	compiledMethod methodClass: self; selector: selector.
	(selector isEmpty or: [((CSMethodObject respondsTo: #isBootstrapping) not or: [CSMethodObject isBootstrapping])])
		ifTrue: [ method := compiledMethod ]
		ifFalse: [
			method := self
				contextSConversionOld: (self compiledMethodAt: selector ifAbsent: [ nil ])
				new: compiledMethod.
			method methodClass: self; selector: selector ].
	self methodDict at: selector put: method.
	
	"Now flush Squeak's method cache, either by selector or by method"
	selector flushCache.
	((CSMethodObject respondsTo: #isBootstrapping) not or: [
		CSMethodObject isBootstrapping]) ifFalse: [CSLayeredMethod flushAllCaches].