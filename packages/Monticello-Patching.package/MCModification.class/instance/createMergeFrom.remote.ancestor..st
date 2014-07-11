initializing
createMergeFrom: local remote: remote ancestor: ancestor 
	| mergedIndices ancestorSource |
	ancestorSource := ancestor ifNil: [''] ifNotNil: [ancestor source].
	mergedIndices := (Diff3 new file0: ancestorSource;
				 file1: local source;
				 file2: remote source;
				 diffClass: HuntMcilroyDiff) mergeIndices.
	^ Diff3Merge 
		mergedIndices: mergedIndices
		local: local source 
		ancestor: ancestorSource
		remote: remote source