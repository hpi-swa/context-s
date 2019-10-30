layer handling
restoreStateFrom: anArray
	"anArray must be the return value of an earlier #saveState call."
	
	methodChain := anArray first.
	proceedIndex := anArray second.