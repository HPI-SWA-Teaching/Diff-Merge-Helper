running
test07Diff3BlockUIWrapper
	| blocks block2 merge wrapper |
	merge := self createDiff3Merge.
	blocks := merge blocks.
	block2 := blocks at: 2.
	wrapper := Diff3BlockUIWrapper wrap: block2.
	Transcript show: 1.
	wrapper resultTextMorph: (self mockResultTextMorphOn: wrapper).
	Transcript show: 2.
	self
		assert: block2 equals: wrapper diff3Block;
		assert: '<CONFLICT>' equals: block2 result.
	Transcript show: 3.	
	wrapper resultTextMorph unacceptedEditState: 'CUSTOM'.
		Transcript show: 4.
	wrapper resultTextMorph accept.
		Transcript show: 5.
	self
		assert: 'CUSTOM' equals: block2 result;
		assert: 'CUSTOM' equals: wrapper resultTextMorph textMorph contents asString;
		assert: 'CUSTOM' equals: wrapper resultTextMorph getText asString;
		assert: merge isSolved.
			Transcript show: 6.
	block2 chooseRemote.
		Transcript show: 7.
	self
		assert: 'Kram' equals: block2 result;	
		assert: 'Kram' equals: wrapper resultTextMorph getText asString;
		assert: 'Kram' equals: wrapper resultTextMorph textMorph contents asString;
		assert: merge isSolved.
			Transcript show: 8