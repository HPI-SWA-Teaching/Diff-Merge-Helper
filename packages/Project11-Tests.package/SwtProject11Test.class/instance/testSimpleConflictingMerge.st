running
testSimpleConflictingMerge
	|workingCopy version methodIndex oldMethodDef newMethodDef snapshot1 snapshot2 snapshot3 merger package|
	
	package := 'Project11-Core'.
	
	Transcript cr; show: '### start TestCase: testSimpleConflictingMerge'; cr.

	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
	Transcript show: 'workingCopy: ', workingCopy; cr.
	version := workingCopy newVersionWithName: package message:''.
	Transcript show: 'version ', version; cr.
	snapshot1 := version snapshot.
	Transcript show: 'snapshot1 ', snapshot1; cr.	
	snapshot2 := version snapshot deepCopy.
	Transcript show: 'snapshot2 ', snapshot2; cr.
	snapshot3 := version snapshot deepCopy.
	Transcript show: 'snapshot3 ', snapshot3; cr.	
	methodIndex := 5.
	oldMethodDef := (snapshot2 definitions at: methodIndex).
	Transcript show: 'oldMethodDef ', oldMethodDef; cr.
	newMethodDef := MCMethodDefinition
		className: ( oldMethodDef className)
		selector: ( oldMethodDef selector )
		category: ( oldMethodDef category )
		timeStamp: ( oldMethodDef timeStamp )
		source: ( oldMethodDef source, ' "neuer Code A"' ).
	(snapshot3 definitions) remove: methodIndex ifAbsent: [].		
	
	snapshot2 definitions at: methodIndex put: newMethodDef.
	
	oldMethodDef := (snapshot1 definitions at: methodIndex).
	newMethodDef := MCMethodDefinition
		className: ( oldMethodDef className)
		selector: ( oldMethodDef selector )
		category: ( oldMethodDef category )
		timeStamp: ( oldMethodDef timeStamp )
		source: ( oldMethodDef source, ' "neuer Code B"' ).
		
	snapshot1 definitions at: methodIndex put: newMethodDef.
	Transcript show: 'snapshot1 ', snapshot1; cr.
	
	merger := MCThreeWayMerger base: snapshot1 target: snapshot2 ancestor: snapshot3.
	Transcript show: 'merger conflicts: ', merger conflicts.
	self assert: merger notNil description: 'merger must not be nil'.	
	self assert: merger conflicts notNil description: 'merger conflicts must not be nil'
