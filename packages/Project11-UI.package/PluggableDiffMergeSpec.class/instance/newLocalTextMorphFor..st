text morphs
newLocalTextMorphFor: aDiff3BlockUIWrapper 
	aDiff3BlockUIWrapper
		localTextMorph: (self
				newTextMorphWith: aDiff3BlockUIWrapper
				textSelector: #local
				acceptSelector: nil).
	self setTextPropertiesFor: aDiff3BlockUIWrapper localTextMorph
		basedOn: aDiff3BlockUIWrapper local.
	^ aDiff3BlockUIWrapper localTextMorph