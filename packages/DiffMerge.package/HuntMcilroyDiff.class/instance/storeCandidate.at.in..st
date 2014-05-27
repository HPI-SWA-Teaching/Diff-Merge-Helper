private
storeCandidate: c at: r in: candidates
	r > candidates size ifTrue: [candidates add: c] ifFalse: [candidates at: r put: c].