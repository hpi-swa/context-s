ui-layers
contextLayerMenu: aMenu
	
	(self menuHook: aMenu named: #messageCategoryMenu shifted: false) ifTrue: [ ^ aMenu ].
	^ aMenu
		labels: 'delete layer'
		lines: #()
		selections: #(deleteSelectedLayer)