tests
testUnload
	| mock |
	self mockPackage unload.
	self deny: (Smalltalk hasClassNamed: #MCMockClassA) description: 'Class not removed'.
	self deny: (MCSnapshotTest includesSelector: #mockClassExtension) description: 'Extension method not removed'.

	mock := Smalltalk classNamed: #MCMock.
	self assert: (mock subclasses noneSatisfy: [:c | c name = #MCMockClassA]) description: 'Can still find the "removed" subclass'.