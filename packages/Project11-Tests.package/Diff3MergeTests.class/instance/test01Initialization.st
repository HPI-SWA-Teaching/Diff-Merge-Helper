running
test01Initialization
	self assert:	self merge ancestorSource equals: self text0.
	self assert:	self merge localSource equals: self text1.
	self assert:	self merge remoteSource equals: self text2.
	self assert: self merge mergedIndices equals: self mergedIndicesResult.
	self assertNotNil: self merge blocks
	