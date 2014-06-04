running
test02Diff3BlockInitialization
	| diff3Block |
	diff3Block := Diff3Block text: self text0 side: #original.
	self 
		assert: diff3Block ancestor equals: self text0;
		assertNil: diff3Block local;
		assertNil: diff3Block remote.
	diff3Block := Diff3Block text: self text1 side: #left.
	self 
		assertNil: diff3Block ancestor;
		assert: diff3Block local equals: self text1;
		assertNil: diff3Block remote.
	diff3Block := Diff3Block text: self text2 side: #right.
	self 
		assertNil: diff3Block ancestor;
		assertNil: diff3Block local;
		assert: diff3Block remote equals: self text2