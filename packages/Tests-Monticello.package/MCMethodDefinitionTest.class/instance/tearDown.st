running
tearDown

	self restoreMocks.
	(MCWorkingCopy forPackage: (MCPackage named: 'FooBarBaz')) unregister.
	MCMockPackageInfo new mcPackage workingCopy unregister.
	self class
		compile: 'override ^ 1'
		classified: 'mocks'
		withStamp: overrideTimestamp
		notifying: nil.
	SystemOrganizer default removeEmptyCategories.
	self ownPackage modified: isModified.
	super tearDown
