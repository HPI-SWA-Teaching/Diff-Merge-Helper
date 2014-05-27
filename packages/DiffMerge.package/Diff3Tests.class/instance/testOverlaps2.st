as yet unclassified
testOverlaps2
	| m |
	m := (Diff3 new
			file0: #();
			file1: #(A B C);
	  		file2: #(A D C);
			diffClass: HuntMcilroyDiff) merge.
	self assert: [m = {
		#conflict -> (Diff3Conflict new left: #(A B C); original: #(); right: #(A D C))}].