delegation
customizedResult: aText from: aTextMorph
	| isAccepted |
	aTextMorph color: Color green.
	isAccepted := self diff3Block customizedResult: aText asString.
	self diff3Block choice: nil.
	self updateTextMorphsAppearance.
	^ isAccepted