running
testSimpleConflictingMerge
	|workingCopy version methodIndex oldMethodDef newMethodDef snapshot1 snapshot2 snapshot3 merger package|
	
	package := 'Project11-Core'.

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
		source: ( oldMethodDef source, '42' ).
	(snapshot3 definitions) remove: methodIndex ifAbsent: [].		
	
	snapshot2 definitions at: methodIndex put: newMethodDef.
	
	oldMethodDef := (snapshot1 definitions at: methodIndex).
	newMethodDef := MCMethodDefinition
		className: ( oldMethodDef className)
		selector: ( oldMethodDef selector )
		category: ( oldMethodDef category )
		timeStamp: ( oldMethodDef timeStamp )
		source: ( oldMethodDef source, '21' ).
		
	snapshot1 definitions at: methodIndex put: newMethodDef.
	
	merger := MCThreeWayMerger base: snapshot1 target: snapshot2 ancestor: snapshot3.
	self assert: (merger conflicts notNil).