merging
resultSource
	| stream |
	self isSolved ifFalse: [Diff3UnsolvedMergeConflicts signal].
	stream := AttributedTextStream new.
	self blocks do: [:block | stream nextPutAll: (block result)].
	^ stream contents asString