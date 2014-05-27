comparing
<= otherHunk
	^ (oldChunk < otherHunk oldChunk) or:
		[(otherHunk oldChunk = oldChunk) and: [side = #left]]