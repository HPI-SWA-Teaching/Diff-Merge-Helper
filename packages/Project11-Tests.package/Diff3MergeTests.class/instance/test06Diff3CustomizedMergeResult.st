running
test06Diff3CustomizedMergeResult
	| blocks block2 |
	blocks := self merge blocks.
	block2 := blocks at: 2.
	
	self assertNil: block2 customizedResult.
	block2 customizedResult: 'CUSTOM'.

	self
		assert: 'CUSTOM' equals: block2 customizedResult;
		assert: 'CUSTOM' equals: block2 result;
		assert: block2 isSolved;
		assert: self merge isSolved;
		assert: 'Das ist ein CUSTOM\	geht doch über mehrere Zeilen1.' withCRs equals: self merge resultSource.
	
	block2 chooseLocal.
	self
		assert: block2 isSolved;
		assert: self merge isSolved;
		assertNil: block2 customizedResult;
		assert: 'Stuff' equals: block2 result;
		assert: 'Das ist ein Stuff\	geht doch über mehrere Zeilen1.' withCRs equals: self merge resultSource