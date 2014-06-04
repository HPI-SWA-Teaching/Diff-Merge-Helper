running
test01Initialization
	| diff3Merge |
	diff3Merge := self createDiff3Merge.
	self assert:	diff3Merge ancestorSource equals: self text0.
	self assert:	diff3Merge localSource equals: self text1.
	self assert:	diff3Merge remoteSource equals: self text2.
	self assert: diff3Merge mergedIndices equals: self mergedIndicesResult.
	self assertNotNil: diff3Merge blocks
	