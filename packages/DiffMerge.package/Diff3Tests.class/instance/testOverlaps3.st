as yet unclassified
testOverlaps3
	| m |
	m := (Diff3 new
			file0: #(0 1 2 A X DD C Y E);
			file1: #(0 1 2 A X DD op BB Y E);
	  		file2: #(0 1 2 A AA C Y E);
			diffClass: HuntMcilroyDiff) merge.
	self assert: [m = {
		#ok -> #(0 1 2 A).
		#conflict -> (Diff3Conflict new left: #(X DD op BB); original: #(X DD C); right: #(AA C)).
		#ok -> #(Y E)}].