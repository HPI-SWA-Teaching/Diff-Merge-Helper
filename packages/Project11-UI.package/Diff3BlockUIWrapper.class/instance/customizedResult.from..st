delegation
customizedResult: aText from: aTextMorph
	| isAccepted |
	aTextMorph color: Diff3Constants solvedConflictColor.
	isAccepted := self diff3Block customizedResult: aText asString.
	self diff3Block choice: nil.
	self updateTextMorphsAppearance.
	^ isAccepted