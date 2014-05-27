as yet unclassified
testMergeIncludingFalseConflicts
	| m |
	m := self instance merge.
	self assert: [m = {
		#ok->#(#the #quick #fox) .
		#conflict->(Diff3Conflict new
					left: #(#jumps);
					original: #(#jumped);
					right: #(#jumps)) .
		#ok->#(#over) .
		#conflict->(Diff3Conflict new
					left: #(#some #lazy);
					original: #(#a);
					right: #(#some #record)) .
		#ok->#(#dog)
	}].