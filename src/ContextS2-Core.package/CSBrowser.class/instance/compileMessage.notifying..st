superclass hooks
compileMessage: aText notifying: aController
	"Adapt super to deal with actual methods, hence duplicated code"

	"Compile the code that was accepted by the user, placing the compiled method into an appropriate message category.  Return true if the compilation succeeded, else false."
	self selectedMessageCategoryName = ClassOrganizer allCategory
		ifTrue:
			[ "User tried to save a method while the ALL category was selected"
			| fallBackCategoryName originalSelectorName result fallBackMethodName fallBackMethod |

			fallBackCategoryName := selectedMessageCategoryName.
			fallBackMethodName := selectedMessageName.
			fallBackMethod := selectedMessageReference.
			editSelection == #newMessage
				ifTrue:
					[ "Select the 'as yet unclassified' category"
					selectedMessageCategoryName := nil.
					(result := self defineMessageFrom: aText notifying: aController)
						ifNil:
							["Compilation failure:  reselect the original category & method"
							selectedMessageCategoryName := fallBackCategoryName.
							selectedMessageName := fallBackMethodName.
							selectedMessageReference := fallBackMethod]
						ifNotNil:
							[self setSelector: result]]
				ifFalse:
					[originalSelectorName := self selectedMessageName.
					self setOriginalCategoryIndexForCurrentMethod.
					selectedMessageName := fallBackMethodName := originalSelectorName.			
					(result := self defineMessageFrom: aText notifying: aController)
						ifNotNil:
							[self setSelector: result]
						ifNil:
							[ "Compilation failure:  reselect the original category & method"
							selectedMessageCategoryName := fallBackCategoryName.
							selectedMessageName := fallBackMethodName.
							selectedMessageReference := fallBackMethod.
							^ result notNil]].
			self changed: #messageCategoryList.
			^ result notNil]
		ifFalse:
			[ "User tried to save a method while the ALL category was NOT selected"
			^ (self defineMessageFrom: aText notifying: aController) notNil]