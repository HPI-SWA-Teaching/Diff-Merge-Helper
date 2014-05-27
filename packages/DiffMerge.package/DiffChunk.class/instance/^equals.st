comparing
= otherChunk
	^ (otherChunk isKindOf: DiffChunk) and:
	[(self offset = otherChunk offset) and:
	[(self length = otherChunk length)]]