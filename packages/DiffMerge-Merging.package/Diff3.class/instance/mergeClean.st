merging
mergeClean
	"Returns an Array of (#ok -> {...}) or (#conflict -> Diff3Conflict of collections) instances representing the results of a three-way merge between file1/file0/file2. Optimistically treats 'false conflicts' as clean merges (see the class comment for Diff3ExclusiveVisitor)."
	^ self merge: true