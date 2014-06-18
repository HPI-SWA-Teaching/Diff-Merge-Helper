text morphs
newResultTextMorphFor: aDiff3BlockUIWrapper 
	aDiff3BlockUIWrapper
		resultTextMorph: (self
				newTextMorphWith: aDiff3BlockUIWrapper
				textSelector: #result
				acceptSelector: #customizedResult:from:).
	self setTextPropertiesFor: aDiff3BlockUIWrapper resultTextMorph
		basedOn: aDiff3BlockUIWrapper result.
	^ aDiff3BlockUIWrapper resultTextMorph