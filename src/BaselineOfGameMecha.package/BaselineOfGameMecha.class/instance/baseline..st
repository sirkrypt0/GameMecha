baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'GameMecha-Core';
				package: 'GameMecha-Test' with: [spec requires: #('default')];
				yourself.
			spec
				group: 'default' with: #('GameMecha-Core');
				group: 'tests' with: #('GameMecha-Test')];
				yourself