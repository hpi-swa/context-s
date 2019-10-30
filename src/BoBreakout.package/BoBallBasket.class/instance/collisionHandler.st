accessing
collisionHandler

	^ collisionHandler ifNil: [ collisionHandler := BoBallCollisionHandler new ]