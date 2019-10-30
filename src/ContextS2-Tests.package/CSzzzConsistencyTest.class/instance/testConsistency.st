testing
testConsistency
	"The message-send in this test throws an AssertionError, if the consistency of the ContextS-classes and objects is broken.
	This test is executed once after all the other tests, therefore the classname with the 'zzz'-part.
	If this test fails, it seems there is a bug somewhere. You can (try to) restore system-consistency with the following DoIt:"
	"CSMethodObject fixAllInstances"
	
	CSMethodObject checkAllInstances.
	"If the checks pass, run fix anyway, because there are non-fatal problems that don't error when using check, but can be fixed anyways (like empty selectors or non-categorized partial methods)"
	CSMethodObject fixAllInstances.