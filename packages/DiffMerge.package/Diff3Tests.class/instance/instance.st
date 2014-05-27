as yet unclassified
instance
	^ Diff3 new
		file1: #(the quick fox jumps over some lazy dog);
		file0: #(the quick brown fox jumped over a dog);
		file2: #(the quick brown fox jumps over some record dog);
		diffClass: HuntMcilroyDiff.