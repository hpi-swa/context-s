baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'ContextS2-Core' with: [];
				package: 'ContextS2-Tests' with: [spec requires: #('ContextS2-Core')];
				package: 'BoBreakout' with: [spec requires: #('ContextS2-Core')];
				yourself.
			spec
				group: 'default' with: #('ContextS2-Core');
				group: 'tests' with: #('ContextS2-Tests');
				group: 'demo' with: #('BoBreakout')];
				yourself