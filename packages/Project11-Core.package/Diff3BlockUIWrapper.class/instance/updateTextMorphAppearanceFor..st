updating
updateTextMorphAppearanceFor: aSymbol
	| color |
	color := self class notChoosenBorderColor.
	(self diff3Block isConflict
		and: [self diff3Block isSolved]
			and: [self diff3Block choice = aSymbol])
				ifTrue: [color := self class choosenBorderColor].
	(self textMorphFor: aSymbol) borderColor: color
	