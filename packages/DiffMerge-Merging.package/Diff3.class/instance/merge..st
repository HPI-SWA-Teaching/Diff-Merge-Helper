private
merge: excludeFalseConflicts
	| visitor |
	visitor := excludeFalseConflicts
		ifTrue: [Diff3ExclusiveVisitor new]
		ifFalse: [Diff3InclusiveVisitor new].
	visitor files: self fileMap.
	self mergeIndices do: [:each | each accept: visitor].
	^ visitor result
