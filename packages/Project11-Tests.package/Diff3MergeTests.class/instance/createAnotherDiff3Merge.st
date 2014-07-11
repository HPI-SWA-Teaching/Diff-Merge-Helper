helpers
createAnotherDiff3Merge
	
	^ Diff3Merge 
		mergedIndices: self anotherInstance mergeIndices
		local: self anotherText1
		ancestor: self anotherText0
		remote: self anotherText2