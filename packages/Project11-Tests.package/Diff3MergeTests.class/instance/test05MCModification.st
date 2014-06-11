running
test05MCModification
	| ancestor local modification remote |
	local := self mockMethodWithSource: 'abc ^ ', self text1.
	remote := self mockMethodWithSource: 'abc ^ ', self text2.
	ancestor := self mockMethodWithSource: 'abc ^ ', self text0.
	modification := MCModification of: local to: remote with: ancestor.
	self assertNotNil: modification merge
	