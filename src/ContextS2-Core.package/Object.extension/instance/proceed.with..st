*contexts2-core
proceed: arg1 with: arg2
	| info index |
	info := Processor activeProcess csInfo.
	index := info proceedIndex.
	info methodChain size < index ifTrue: [ ^ self ]. "Method chain has been executed to the end.
														Simulate an empty method"
	^ self withArgs: {arg1.arg2.} executeMethod: (info methodChain at: index)