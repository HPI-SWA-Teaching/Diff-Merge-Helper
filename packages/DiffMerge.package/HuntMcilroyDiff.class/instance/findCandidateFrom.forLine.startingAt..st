private
findCandidateFrom: candidates forLine: file2index startingAt: lowIndex
	"Find the index k in the given subrange of candidates where file2index falls strictly between the file2indexes of the kth and k+1th candidates. If no such k exists, return 0."
	(lowIndex to: candidates size) do: [ :k |
		(candidates at: k) file2index >= file2index ifTrue: [^ 0].
		(k = candidates size or: [ (candidates at: k + 1) file2index > file2index ])
			ifTrue: [^ k] ].
	^ 0