private
addCommonChunkTo: result between: commonOffset and: targetOffset
	targetOffset > commonOffset ifTrue: [
		result add: (Diff3Chunk new
						side: #original;
						offset: commonOffset;
						length: targetOffset - commonOffset)].
	^ targetOffset
