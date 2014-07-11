as yet unclassified
findLineStartToRightFrom: anIndex
"find the first non-conflict block containing a newline."
	(anIndex + 1 to: self lineBasedBlocks size)
		do: [:i | (self lineBasedBlocks at: i) isConflict
				ifFalse: [(self blockContainsNewLine: i)
						ifTrue: [^ i]]].
	^ 0