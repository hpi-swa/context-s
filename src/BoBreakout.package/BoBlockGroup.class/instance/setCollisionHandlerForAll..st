effects
setCollisionHandlerForAll: aCollisionHandler

	self do: [ :block | block collisionHandler: aCollisionHandler ]