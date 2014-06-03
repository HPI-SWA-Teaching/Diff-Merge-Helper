as yet unclassified
tearDown

	super tearDown.
	Smalltalk at: 'MCMockClassC' ifPresent: [:c | c removeFromSystem]