toolbuilder
buildMessageListWith: builder
	| listSpec |
	listSpec := builder pluggableTreeSpec new.
	listSpec 
		model: self;
		roots: #messageList; 
		getSelected: #selectedMessageReference; 
		setSelected: #selectedMessageReference:; 
		hasChildren: #isLayeredMethod:;
		getChildren: #allLayeredMethods:;
		label: #messageLabelFor:;
		icon: #messageIconFor:;
		help: #messageHelpFor:;
		menu: #messageListMenu:shifted:; 
		keyPress: #messageListKey:from:event:;
		autoDeselect: false;
		yourself.
	SystemBrowser browseWithDragNDrop 
		ifTrue:[listSpec dragItem: #dragFromMessageList:].
	^listSpec
