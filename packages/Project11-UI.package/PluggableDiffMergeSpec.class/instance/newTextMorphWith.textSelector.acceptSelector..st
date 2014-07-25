text morphs
newTextMorphWith: aDiff3BlockUIWrapper textSelector: aSelector acceptSelector: anotherSelector
	^ (PluggableTextMorphNotEditable on: aDiff3BlockUIWrapper text: aSelector accept: anotherSelector)
		vResizing: #spaceFill;
		hResizing: #spaceFill