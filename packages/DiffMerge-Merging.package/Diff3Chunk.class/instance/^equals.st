as yet unclassified
= otherChunk
	^ (otherChunk isKindOf: Diff3Chunk) and: [(super = otherChunk) and: [side = otherChunk side]]