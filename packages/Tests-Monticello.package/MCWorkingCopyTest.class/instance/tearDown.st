running
tearDown
	super tearDown.
	workingCopy unregister.
	self restoreMocks.
	SystemOrganizer default removeEmptyCategories.
	MCSnapshotTest organization removeEmptyCategories.
	Utilities setAuthorInitials: savedInitials