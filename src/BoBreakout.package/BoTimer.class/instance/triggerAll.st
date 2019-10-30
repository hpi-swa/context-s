stepping and presenter
triggerAll

	self tasks valuesDo: [ :task | task trigger ];
		removeAll