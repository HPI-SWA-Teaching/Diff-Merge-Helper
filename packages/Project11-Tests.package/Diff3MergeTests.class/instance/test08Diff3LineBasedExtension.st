running
test08Diff3LineBasedExtension
	| blocks merge block1 |
	merge := self createAnotherDiff3Merge.
	merge := Diff3MergeLineBasedConverter toLineBasedMerge: merge.
	blocks := merge blocks.
	block1 := blocks first.
	
	self
		assert: block1 isConflict;
		deny: block1 isSolved;
		assert: (block1 local endsWith: Character cr asString);
		assert: (block1 remote endsWith: Character cr asString);
		assert: (block1 ancestor endsWith: Character cr asString).