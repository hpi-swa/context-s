initialize-release
openEditString: aString
	"Create a pluggable version of all the views for a Browser, including views and controllers."
	"CSContextBrowser fullOnClass: Browser"
	
	| builder max |
	builder := ToolBuilder default.
	max := self wantsOptionalButtons ifTrue: [ 0.42 ] ifFalse: [ 0.5 ].
	^ self buildWindowWith: builder specs: {
		(0@0 corner: 0.2@max) -> [self buildSystemCategoryListWith: builder].
		(0.2@0 corner: 0.4@(max-0.08)) -> [self buildClassListWith: builder].
		(0.2@(max-0.08) corner: 0.4@max) -> [self buildSwitchesWith: builder].
		(0.6@0 corner: 0.8@max) -> [ self buildMessageCategoryListWith: builder ].
		(0.4@0 corner: 0.6@max) -> [self buildContextLayerListWith: builder].
		(0.8@0 corner: 1@max) -> [self buildMessageListWith: builder].
		(0@max corner: 1@1) -> [self buildCodePaneWith: builder]
	}