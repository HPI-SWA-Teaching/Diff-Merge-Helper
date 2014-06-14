running
test07Diff3BlockUIWrapper
	| blocks block2 merge wrapper |
	merge := self createDiff3Merge.
	blocks := merge blocks.
	block2 := (blocks at: 2).
	wrapper := Diff3BlockUIWrapper wrap: block2.
	wrapper finalTextMorph: (self mockFinalTextMorphOn: wrapper).
	
	self
		assert: block2 equals: wrapper diff3Block;
		assert: '<CONFLICT>' equals: block2 result.
		
	wrapper finalTextMorph unacceptedEditState: 'CUSTOM'.
	wrapper finalTextMorph accept.	
	self
		assert: 'CUSTOM' equals: block2 result;
		assert: 'CUSTOM' equals: wrapper finalTextMorph textMorph contents asString;
		assert: 'CUSTOM' equals: wrapper finalTextMorph getText asString;
		assert: merge isSolved.
		
	block2 chooseRemote.
	self
		assert: 'Kram' equals: block2 result;
		assert: 'Kram' equals: wrapper finalTextMorph getText asString;
		assert: 'Kram' equals: wrapper finalTextMorph textMorph contents asString;
		assert: merge isSolved