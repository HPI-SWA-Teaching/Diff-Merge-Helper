baseline
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [spec package: 'Project11-Core';
				package: 'Project11-UI';
				package: 'DiffMerge';
				package: 'Monticello-Patching';
				package: 'Project11-Tests'
				with: [spec requires: #('default')];
				 yourself.
			spec group: 'default' with: #('Project11-Core' 'Project11-UI' 'DiffMerge' 'Monticello-Patching');
				 group: 'Tests' with: #('Project11-Tests');
				 group: 'TravisCI' with: #('Tests');
				 yourself]