running
test07Diff3BlockUIWrapper
	| t1 t2 t3 t4 |
	t3 := self createDiff3Merge.
	t1 := t3 blocks.
	t2 := t1 at: 2.
	t4 := Diff3BlockUIWrapper wrap: t2.
	t4
		resultTextMorph: (self mockResultTextMorphOn: t4).
	self assert: t2 equals: t4 diff3Block;
		 assert: '<CONFLICT>' equals: t2 result.
	t4 resultTextMorph unacceptedEditState: 'CUSTOM'.
	t4 resultTextMorph accept.
	self assert: 'CUSTOM' equals: t2 result;
		 assert: 'CUSTOM' equals: t4 resultTextMorph textMorph contents asString;
		 assert: 'CUSTOM' equals: t4 resultTextMorph getText asString;
		 assert: t3 isSolved.
	t2 chooseRemote.
	self assert: 'Kram' equals: t2 result;
		 assert: 'Kram' equals: t4 resultTextMorph getText asString;
		 assert: 'Kram' equals: t4 resultTextMorph textMorph contents asString;
		 assert: t3 isSolved