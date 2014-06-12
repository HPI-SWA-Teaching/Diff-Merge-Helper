text morphs
newFinalTextMorphFor: aDiff3BlockUIWrapper 
	aDiff3BlockUIWrapper
		finalTextMorph: (self
				newTextMorphWith: aDiff3BlockUIWrapper
				textSelector: #result
				acceptSelector: #customizedResult:from:).
	self setTextPropertiesFor: aDiff3BlockUIWrapper finalTextMorph
		basedOn: aDiff3BlockUIWrapper result.
	^ aDiff3BlockUIWrapper finalTextMorph