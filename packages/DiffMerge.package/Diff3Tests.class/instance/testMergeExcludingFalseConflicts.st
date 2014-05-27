as yet unclassified
testMergeExcludingFalseConflicts
	| m |
	m := self instance mergeClean.
	self assert: [m = {
		#ok->#(#the #quick #fox #jumps #over) .
		#conflict->(Diff3Conflict new
					left: #(#some #lazy);
					original: #(#a);
					right: #(#some #record)) .
		#ok->#(#dog)
	}].