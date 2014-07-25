conversion
splitBlockFromLeftMostNewLine: anIndex 
	| blockLeft blockRight choice pair |
	blockLeft := self lineBasedBlocks at: anIndex.
	blockRight := blockLeft copy.
	choice := blockLeft choice.
	pair := self splitStringFromLeftMostNewLine: (blockLeft sourceFrom: choice).
	blockLeft set: choice to: pair first.
	blockRight set: choice to: pair second.
	self
		replaceBlockAt: anIndex
		with: blockLeft
		and: blockRight