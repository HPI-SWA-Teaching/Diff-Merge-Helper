initialization
checkForCleanConflict
	self cleanConflict: (self class isTrueConflictBetween: self local and: self remote) not.
	self isCleanConflict ifTrue: [self choice: #local]