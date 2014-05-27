as yet unclassified
testDiffIndices
	| p |
	p := (self sampleDiff: self diffClass) diffIndices.
	self assert: [p =  {(DiffChunk offset: 2 length: 1)->(DiffChunk offset: 2 length: 0) . (DiffChunk offset: 4 length: 0)->(DiffChunk offset: 3 length: 1) . (DiffChunk offset: 5 length: 1)->(DiffChunk offset: 5 length: 1)}].