as yet unclassified
testOverlaps1
	| m |
	m := (Diff3 new
			file0: #(AA ZZ 00 M 99);
			file1: #(AA a b c ZZ new 00 a a M 99);
	  		file2: #(AA a d c ZZ 11 M z z 99);
			diffClass: HuntMcilroyDiff) merge.
	self assert: [m = {
		#ok -> #(AA).
		#conflict -> (Diff3Conflict new left: #(a b c); original: #(); right: #(a d c)).
		#ok -> #(ZZ).
		#conflict -> (Diff3Conflict new left: #(new 00 a a); original: #(00); right: #(11)).
		#ok -> #(M z z 99)}].