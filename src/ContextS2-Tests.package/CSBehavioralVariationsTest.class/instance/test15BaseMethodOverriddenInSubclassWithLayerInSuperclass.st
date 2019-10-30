testing
test15BaseMethodOverriddenInSubclassWithLayerInSuperclass
	
	self assert: (#l42 withLayerDo: [CSMyClassSub new blub]) ~= 42