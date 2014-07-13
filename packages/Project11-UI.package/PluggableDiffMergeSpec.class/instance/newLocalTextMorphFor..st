text morphs
newLocalTextMorphFor: aDiff3BlockUIWrapper 
	aDiff3BlockUIWrapper
		localTextMorph: (self
				newTextMorphWith: aDiff3BlockUIWrapper
				textSelector: #local
				acceptSelector: nil
				target: aDiff3BlockUIWrapper diff3Block
				actionSelector: #chooseLocal).
	self setTextPropertiesFor: aDiff3BlockUIWrapper localTextMorph
		basedOn: aDiff3BlockUIWrapper local.
	^ aDiff3BlockUIWrapper localTextMorph