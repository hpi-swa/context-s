toolbuilder
buildWindowWith: aBuilder

	| windowSpec |
	windowSpec := super buildWindowWith: aBuilder.
	windowSpec closeAction: #closed.
	^ windowSpec