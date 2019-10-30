consistency
flushAllCaches

	self allInstances do: [:method | method flushCache].