testing
testMCModification
	| local remote ancestor modification |
	
	ancestor := self mockMethod: #one class: 'MCMockClassA' source: 'one ^ 0'  meta: false.
	local := self mockMethod: #one class: 'MCMockClassA' source: 'one ^ 1'  meta: false.
	remote := self mockMethod: #one class: 'MCMockClassA' source: 'one ^ 2'  meta: false.
	modification := MCModification of: local to: remote with: ancestor.
	self assert: modification ancestorSource = 'one ^ 0'.
	self assert: modification obsoletion source = 'one ^ 1'.
	self assert: modification modification source = 'one ^ 2'