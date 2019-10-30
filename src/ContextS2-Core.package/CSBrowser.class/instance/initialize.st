initialize-release
initialize

	super initialize.
	self messageIconCache: (WeakKeyDictionary new: 24).
	SystemChangeNotifier uniqueInstance
		notify: self ofSystemChangesOfItem: #method change: #Added using: #methodEvent:;
		notify: self ofSystemChangesOfItem: #method change: #Removed using: #methodEvent:;
		yourself.