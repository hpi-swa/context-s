message list
nonLayeredMessagesFrom: aList

	^ aList select: [:method | method isContextSMethod not]