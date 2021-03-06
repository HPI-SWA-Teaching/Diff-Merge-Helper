running
test04Diff3BlockSelection
	| blocks block2 |
	blocks := self merge blocks.
	block2 := blocks at: 2.
	self
		deny: self merge isSolved;
		deny: block2 isSolved;
		should: [self merge resultSource] raise: Diff3UnsolvedMergeConflicts;
		assert: block2 result equals: '<CONFLICT>'.

	block2 chooseLocal.
	self
		assert: block2 isSolved;
		assert: self merge isSolved;
		assert: 'Das ist ein Stuff\	geht doch über mehrere Zeilen1.' withCRs
			equals: self merge resultSource.
	
	block2 chooseRemote.
	self
		assert: block2 isSolved;
		assert: self merge isSolved;
		assert: 'Das ist ein Kram\	geht doch über mehrere Zeilen1.' withCRs
			equals: self merge resultSource.
	
	block2 chooseAncestor.
	self
		assert: block2 isSolved;
		assert: self merge isSolved;
		assert: 'Das ist ein Text\	geht doch über mehrere Zeilen1.' withCRs
			equals: self merge resultSource