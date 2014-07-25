conversion
replaceBlockAt: anIndex with: blockLeft and: blockRight
	| beginning |
	beginning := self lineBasedBlocks first: anIndex - 1.
	beginning add: blockLeft.
	beginning add: blockRight.
	beginning addAll: (self lineBasedBlocks allButFirst: anIndex).
	self lineBasedBlocks: beginning