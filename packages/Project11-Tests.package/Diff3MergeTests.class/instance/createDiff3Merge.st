helpers
createDiff3Merge
	
	^ Diff3Merge 
		mergedIndices: self instance mergeIndices
		local: self text1 
		ancestor: self text0
		remote: self text2