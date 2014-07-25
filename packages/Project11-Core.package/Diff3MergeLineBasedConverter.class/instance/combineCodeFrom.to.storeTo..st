conversion
combineCodeFrom: startIndex to: endIndex storeTo: codeHolder
	| processedBlocks |
	processedBlocks := OrderedCollection new.
	startIndex
		to: endIndex
		do: [:i | 
			| block |
			block := self lineBasedBlocks at: i.
			block isConflict
				ifTrue: [codeHolder appendToLocal: block local.
					codeHolder appendToAncestor: block ancestor.
					codeHolder appendToRemote: block remote]
				ifFalse: [codeHolder appendToAll: block result].
			processedBlocks add: block].
	^ processedBlocks