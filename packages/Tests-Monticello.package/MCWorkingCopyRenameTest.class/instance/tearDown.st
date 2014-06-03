running
tearDown
	super tearDown.
	workingCopy unregister.
	SystemOrganizer default removeEmptyCategories.
	MCSnapshotTest organization removeEmptyCategories.
	Utilities setAuthorInitials: savedInitials