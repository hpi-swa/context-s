non local return
nonLocalReturn
	|  aBlock |
	aBlock :=  [^ false].
	#l1 withLayerDo: [self valueBlock: aBlock].