updating
updateTextMorphAppearanceFor: aSymbol
	(self textMorphFor: aSymbol) ifNotNil: [
		| color |
		color := Diff3Constants noConflicColor.
		(self diff3Block isConflict
			and: [self diff3Block isSolved]
				and: [self diff3Block choice = aSymbol])
					ifTrue: [color := Diff3Constants choosenBorderColor].
		(self textMorphFor: aSymbol) color: color]