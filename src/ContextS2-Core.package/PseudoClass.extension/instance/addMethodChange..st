*contexts2-core-methods-override
addMethodChange: aChangeRecord
	"override this to re-add the layers to the selector, so we can load multiple partial methods"
	| selector |
	selector := self newParser parseSelector: aChangeRecord string.
	"--- BEGIN CONTEXTS OVERRIDE ---"
	((((self newParser parse: aChangeRecord string class: UndefinedObject)
		properties pragmas
		select: [:p | p keyword = #layer:])
		gather: [:p | p arguments]) collect: [:a | a asString])
			ifNotEmptyDo: [:layers |
				selector := selector, ' ('.
				layers do: [:l | selector := selector, l] separatedBy: [selector := selector, ' '].
				selector := selector, ')'].
	"--- END CONTEXTS OVERRIDE ---"
	self organization classify: selector under: aChangeRecord category.
	self sourceCodeAt: selector put: aChangeRecord