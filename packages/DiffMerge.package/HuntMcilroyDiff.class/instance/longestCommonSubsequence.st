diffing
longestCommonSubsequence
	| equivalenceClasses candidates |
	lcs ifNotNil: [ ^ lcs ].
	equivalenceClasses := self computeEquivalenceClasses.
	candidates := OrderedCollection with: (HuntMcilroyDiffCandidate new 
			file1index: 0
			file2index: 0
			chain: nil).
	file1 withIndexDo: 
		[ :line :file1index | 
		self 
			mergeCandidates: candidates
			file1index: file1index
			file2indices: (equivalenceClasses 
					at: line
					ifAbsent: #()) ].
	lcs := self postprocessCandidateChain: candidates.
	^ lcs