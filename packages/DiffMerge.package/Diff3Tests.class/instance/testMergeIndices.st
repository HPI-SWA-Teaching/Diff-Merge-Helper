as yet unclassified
testMergeIndices
	| m |
	m := self instance mergeIndices.
	self assert: [m =  {
		((Diff3Chunk offset: 1 length: 2) side: #original).
		((Diff3Chunk offset: 4 length: 1) side: #original).
		(Diff3Conflict new
			left: (DiffChunk offset: 4 length: 1);
			original: (DiffChunk offset: 5 length: 1);
			right: (DiffChunk offset: 5 length: 1)).
		((Diff3Chunk offset: 6 length: 1) side: #original).
		(Diff3Conflict new
			left: (DiffChunk offset: 6 length: 2);
			original: (DiffChunk offset: 7 length: 1);
			right: (DiffChunk offset: 7 length: 2)).
		((Diff3Chunk offset: 8 length: 1) side: #original)
	}].