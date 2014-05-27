private
mergeCandidates: candidates file1index: file1index file2indices: file2indices 
	| r c s newCandidate |
	r := 1.
	c := candidates at: r.
	file2indices do: 
		[ :file2index | 
		s := self findCandidateFrom: candidates forLine: file2index startingAt: r.
		s > 0 ifTrue: 
			[ newCandidate := HuntMcilroyDiffCandidate new 
				file1index: file1index
				file2index: file2index
				chain: (candidates at: s).
			self storeCandidate: c at: r in: candidates.
			c := newCandidate.
			r := s + 1.
			"optimise by leaving early if s was the end of the candidates list, since none of the subsequent file2indices will have a place to go"
			s = candidates size ifTrue: 
				[ self storeCandidate: c at: r in: candidates. ^ self ] ] ].
	self storeCandidate: c at: r in: candidates.