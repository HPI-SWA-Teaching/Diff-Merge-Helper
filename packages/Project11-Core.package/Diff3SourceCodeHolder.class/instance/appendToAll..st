string handling
appendToAll: aString
	self
		appendToLocal: aString;
		appendToAncestor: aString;
		appendToRemote: aString