string handling
appendToAncestor: aString
	self ancestor: (self append: aString to: self ancestor)