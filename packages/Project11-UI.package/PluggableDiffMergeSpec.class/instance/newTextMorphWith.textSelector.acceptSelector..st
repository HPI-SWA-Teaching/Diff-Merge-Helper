text morphs
newTextMorphWith: aDiff3BlockUIWrapper textSelector: aSelector acceptSelector: anotherSelector
	^ (PluggableTextMorphPlus on: aDiff3BlockUIWrapper text: aSelector accept: anotherSelector)
		vResizing: #spaceFill;
		hResizing: #spaceFill