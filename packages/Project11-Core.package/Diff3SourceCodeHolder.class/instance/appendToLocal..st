string handling
appendToLocal: aString
	self local: (self append: aString to: self local)