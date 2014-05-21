private
computeConflictFrom: i1 to: i2 hunks: hunks
	| hunk conflict l o r lo ro chunk chunkOrig |
	conflict := Diff3Conflict new.
	conflict left: (l := DiffChunk negativeSize: file1 size).
	conflict original: (o := DiffChunk negativeSize: file0 size).
	conflict right: (r := DiffChunk negativeSize: file2 size).
	lo := o copy.
	ro := o copy.

	i1 to: i2 do: [:index |
		hunk := hunks at: index.
		(hunk side = #left)
			ifTrue: [chunk := l. chunkOrig := lo.]
			ifFalse: [chunk := r. chunkOrig := ro.].
		o destructiveMergeWith: hunk oldChunk.
		chunk destructiveMergeWith: hunk newChunk.
		chunkOrig destructiveMergeWith: hunk oldChunk].

	l correctForSkewFrom: lo to: o.
	r correctForSkewFrom: ro to: o.

	^ conflict