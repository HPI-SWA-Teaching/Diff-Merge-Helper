text morphs
newTextMorphWith: aDiff3BlockUIWrapper textSelector: aSelector acceptSelector: anotherSelector target: anObject actionSelector: yetAnotherSelector
	^ (PluggableTextMorphNotEditable on: aDiff3BlockUIWrapper text: aSelector accept: anotherSelector target: anObject action: yetAnotherSelector)
		vResizing: #spaceFill;
		hResizing: #spaceFill