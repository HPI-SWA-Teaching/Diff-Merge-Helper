testing
needsInitialize
	^self hasMetaclass and:[
		self metaClass includesSelector: #initialize]