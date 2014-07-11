as yet unclassified
findLineStartToLeftFrom: anIndex
"find the first non-conflict block containing a newline."
	(1 to: anIndex - 1)
		reverseDo: [:i | (self lineBasedBlocks at: i) isConflict
				ifFalse: [(self blockContainsNewLine: i)
						ifTrue: [^ i]]].
	^ 0