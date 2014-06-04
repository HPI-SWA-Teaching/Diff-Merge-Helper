instance creation
local: aLocalSource ancestor: aAncestorSource remote: aRemoteSource
	^ self new
		local: aLocalSource;
		ancestor: aAncestorSource;
		remote: aRemoteSource;
		checkForCleanConflict