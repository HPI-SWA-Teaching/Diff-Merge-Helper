running
testSimpleConflictingMerge
	|workingCopy version methodIndex oldMethodDef newMethodDef snapshot1 snapshot2 snapshot3 merger package|
	
	package := 'Project11-Core'.
	
	Transcript show: '### testSimpleConflictingMerge starting'.

	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
	version := workingCopy newVersionWithName: package message:''.
	snapshot1 := version snapshot.
	snapshot2 := version snapshot deepCopy.
	snapshot3 := version snapshot deepCopy.
	methodIndex := 5.
	oldMethodDef := (snapshot2 definitions at: methodIndex).
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
	
	merger := MCThreeWayMerger base: snapshot1 target: snapshot2 ancestor: snapshot3.
	Transcript show: 'merger conflicts: ', merger conflicts.
	self assert: merger notNil description: 'merger must not be nil'.	
	self assert: merger conflicts notNil description: 'merger conflicts must not be nil'