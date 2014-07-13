as yet unclassified
splitBlockFromLeft: anIndex 
	| blockLeft blockRight choice beginning |
	blockLeft := self lineBasedBlocks at: anIndex.
	blockRight := blockLeft copy.
	choice := blockLeft choice.
	(choice == #ancestor)
		ifTrue: [| pair |
			pair := self splitStringFromLeft: blockLeft ancestor.
			blockLeft ancestor: pair first.
			blockRight ancestor: pair second].
	(choice == #local)
		ifTrue: [| pair |
			pair := self splitStringFromLeft: blockLeft local.
			blockLeft local: pair first.
			blockRight local: pair second].
	(choice == #remote)
		ifTrue: [| pair |
			pair := self splitStringFromLeft: blockLeft remote.
			blockLeft remote: pair first.
			blockRight remote: pair second].
	beginning := self lineBasedBlocks first: anIndex - 1.
	beginning add: blockLeft.
	beginning add: blockRight.
	beginning addAll: (self lineBasedBlocks allButFirst: anIndex).
	self lineBasedBlocks: beginning.