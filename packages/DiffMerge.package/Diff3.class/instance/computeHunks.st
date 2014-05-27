private
computeHunks
	| diff2 diff1 hunks |
	diff1 := diffClass new file1: file0; file2: file1; diffIndices.
	diff2 := diffClass new file1: file0; file2: file2; diffIndices.
	hunks := OrderedCollection new.
	diff1 do: [ :entry | hunks add: (Diff3Hunk side: #left entry: entry) ].
	diff2 do: [ :entry | hunks add: (Diff3Hunk side: #right entry: entry) ].
	^ hunks asSortedCollection