as yet unclassified
testOverlaps4
	| m |
	m := (Diff3 new
			file0: #(0 1 2 A X DD C Y E);
			file1: #(0 1 2 A op BB X DD C Y E);
	  		file2: #(0 1 2 A AA C Y E);
			diffClass: HuntMcilroyDiff) merge.
	self assert: [m = {
		#ok -> #(0 1 2 A).
		#conflict -> (Diff3Conflict new left: #(op BB X DD); original: #(X DD); right: #(AA)).
		#ok -> #(C Y E)}].