baseline
baseline: spec 
	<baseline>
	spec
		for: #common
		do: [spec package: 'Project11-Core';
				package: 'DiffMerge';
				package: 'Monticello-Base';
				package: 'Monticello-Loading';
				package: 'Monticello-Merging';
				package: 'Monticello-Patching';
				package: 'Monticello-Versioning';
				package: 'Project11-Tests'
				with: [spec requires: #('default')];
				 yourself.
			spec group: 'default' with: #('Project11-Core' 'DiffMerge' 'Monticello-Base' 'Monticello-Loading' 'Monticello-Patching' 'Monticello-Versioning');
				 group: 'Tests' with: #('Project11-Tests');
				 group: 'TravisCI' with: #('Tests');
				 yourself]