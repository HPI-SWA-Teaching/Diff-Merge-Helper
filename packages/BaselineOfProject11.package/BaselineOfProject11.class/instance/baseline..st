baseline
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [spec package: 'Project11-Core';
				package: 'DiffMerge-Diffing';
				package: 'DiffMerge-Merging';		
				package: 'Project11-Tests'
				with: [spec requires: #('default')];
				 yourself.
			spec group: 'default' with: #('Project11-Core' 'DiffMerge-Diffing' 'DiffMerge-Merging');
				 group: 'Tests' with: #('Project11-Tests');
				 group: 'TravisCI' with: #('Tests');
				 yourself]