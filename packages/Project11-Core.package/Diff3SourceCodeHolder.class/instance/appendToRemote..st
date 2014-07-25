string handling
appendToRemote: aString
	self remote: (self append: aString to: self remote)