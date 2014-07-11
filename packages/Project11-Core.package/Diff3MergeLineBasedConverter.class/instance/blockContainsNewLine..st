as yet unclassified
blockContainsNewLine: anIndex
	(self lineBasedBlocks at: anIndex) ancestor
		ifNil: [^ false]
		ifNotNil: [^ (self lineBasedBlocks at: anIndex) ancestor contains: [:char | char = self lf]]
	