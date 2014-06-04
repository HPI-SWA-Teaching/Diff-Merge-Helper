visitor
side: aSelector chunk: aChunk
	self blocks add: (Diff3Block 
		text: (aChunk extractFrom: (self sources at: aSelector)) 
		side: aSelector)
	"self spikeOutputStream
		currentAttributes: (self attributesFrom: aSelector);
		nextPutAll: (aChunk extractFrom: (self sources at: aSelector))"