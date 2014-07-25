running
test01Diff3ToLineBasedConflicts
	| blocks merge block1 |	
	merge := Diff3MergeLineBasedConverter toLineBasedMerge: self merge.
	blocks := merge blocks.
	block1 := blocks first.
	self
		assert: block1 isConflict;
		deny: block1 isSolved;
		deny: (blocks at: 2) isConflict;
		deny: (blocks at: 3) isConflict;
		deny: (blocks at: 4) isConflict;
		assert: (blocks at: 5) isConflict;
		assert: (blocks at: 6) isConflict;
		assert: (blocks at: 7) isConflict;
		assert: (block1 local endsWith: Character cr asString);
		assert: (block1 remote endsWith: Character cr asString);
		assert: (block1 ancestor endsWith: Character cr asString).