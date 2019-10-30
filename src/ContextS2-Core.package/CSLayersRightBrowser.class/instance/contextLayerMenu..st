layer list
contextLayerMenu: aMenu
	
	(self menuHook: aMenu named: #messageCategoryMenu shifted: false).
	^ aMenu
		labels: 'delete layer'
		lines: #()
		selections: #(deleteSelectedLayer)