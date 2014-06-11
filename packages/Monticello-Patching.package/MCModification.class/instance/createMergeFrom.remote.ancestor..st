initializing
createMergeFrom: local remote: remote ancestor: ancestor 
	| mergedIndices |
	mergedIndices := (Diff3 new file0: ancestor source;
				 file1: local source;
				 file2: remote source;
				 diffClass: HuntMcilroyDiff) mergeIndices.
	^ Diff3Merge 
		mergedIndices: mergedIndices
		local: local source 
		ancestor: ancestor source
		remote: remote source