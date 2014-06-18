running
test07Diff3BlockUIWrapper
	| blocks block2 merge wrapper |
	merge := self createDiff3Merge.
	blocks := merge blocks.
	block2 := blocks at: 2.
	wrapper := Diff3BlockUIWrapper wrap: block2.
	wrapper resultTextMorph: (self mockResultTextMorphOn: wrapper).
	self
		assert: block2 equals: wrapper diff3Block;
		assert: '<CONFLICT>' equals: block2 result.
	
	wrapper resultTextMorph unacceptedEditState: 'CUSTOM'.
	wrapper resultTextMorph accept.
	self
		assert: 'CUSTOM' equals: block2 result;
		assert: 'CUSTOM' equals: wrapper resultTextMorph textMorph contents asString;
		assert: 'CUSTOM' equals: wrapper resultTextMorph getText asString;
		assert: merge isSolved.
		
	block2 chooseRemote.
	self
		assert: 'Kram' equals: block2 result;	
		assert: 'Kram' equals: wrapper resultTextMorph getText asString;
		assert: 'Kram' equals: wrapper resultTextMorph textMorph contents asString;
		assert: merge isSolved