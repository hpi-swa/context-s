*contexts2-core
proceed: arg1 with: arg2 with: arg3 with: arg4
	| info index |
	info := Processor activeProcess csInfo.
	index := info proceedIndex.
	info methodChain size < index ifTrue: [ ^ self ]. "Method chain has been executed to the end.
														Simulate an empty method"
	^ self withArgs: {arg1.arg2.arg3.arg4.} executeMethod: (info methodChain at: index)