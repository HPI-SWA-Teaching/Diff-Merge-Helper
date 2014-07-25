initialization
setUp
	
	self merge: (Diff3Merge 
		mergedIndices: self instance mergeIndices
		local: self text1
		ancestor: self text0
		remote: self text2)