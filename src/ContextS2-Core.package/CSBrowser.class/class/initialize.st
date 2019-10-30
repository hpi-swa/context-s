class initialization
initialize
	"CSBrowser initialize"

	"rare but correct for browsers"
	super initialize.
	self environment at: #TheWorldMenu ifPresent: [:menu |
		(menu respondsTo: #registerOpenCommand:) ifTrue: [
			menu unregisterOpenCommand: 'ContextS Browser'.
			menu registerOpenCommand: {'ContextS Browser'. {self. #open}}]].