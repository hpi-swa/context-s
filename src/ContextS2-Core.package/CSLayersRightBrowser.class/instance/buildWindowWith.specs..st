toolbuilder
buildWindowWith: builder specs: aSpecList
	| paneSpecs codeSpec slimPaneSpecs layerPaneSpec layerPaneFrame |
	paneSpecs := aSpecList first: 5.
	codeSpec := aSpecList last.
	slimPaneSpecs := self compressWidthOfSpecs: paneSpecs from: 1/4 to: 1/5.
	layerPaneFrame := slimPaneSpecs first key copy
							leftFraction: 0.8;
							rightFraction: 1;
							yourself.
	layerPaneSpec := layerPaneFrame -> [self buildContextLayerListWith: builder].
	self when: #classSelectionChanged send: #resetLayers to: self.
	^ super
		buildWindowWith: builder
		specs: slimPaneSpecs, {layerPaneSpec}, {codeSpec}