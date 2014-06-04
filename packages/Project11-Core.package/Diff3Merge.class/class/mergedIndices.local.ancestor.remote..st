instance creation
mergedIndices: someMergedIndices local: aLocalSource ancestor: aAncestorSource remote: aRemoteSource
	| sources |
	sources := IdentityDictionary newFromPairs: 
		{#left . aLocalSource .
		#right . aRemoteSource .
		#original . aAncestorSource}.

	^ self new
		mergedIndices: someMergedIndices;
		sources: sources;
		initializeBlocks