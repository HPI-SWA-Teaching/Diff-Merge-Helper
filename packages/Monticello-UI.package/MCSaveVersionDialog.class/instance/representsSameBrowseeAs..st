as yet unclassified
representsSameBrowseeAs: anotherModel 
	^ self class = anotherModel class
	and: [ self versionName = anotherModel versionName ]