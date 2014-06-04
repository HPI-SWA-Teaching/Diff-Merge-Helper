visitor
left: left original: original right: right
	self blocks add: (Diff3ConflictBlock
		local: (left extractFrom: (self sources at: #left))
		ancestor: (original extractFrom: (self sources at: #original))
		remote: (right extractFrom: (self sources at: #right)))
	"self spikeOutputStream
		currentAttributes: (self attributesFrom: #left);
		nextPutAll: (left extractFrom: (self sources at: #left));
		currentAttributes: (self attributesFrom: #original);
		nextPutAll: (original extractFrom: (self sources at: #original));
		currentAttributes: (self attributesFrom: #right);
		nextPutAll: (right extractFrom: (self sources at: #right))"