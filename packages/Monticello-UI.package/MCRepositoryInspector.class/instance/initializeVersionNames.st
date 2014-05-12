initialize-release
initializeVersionNames
	repository cacheAllFileNamesDuring:
		[ versionNames := selectedPackage
			ifNil: [Array new]
			ifNotNil: [repository versionNamesForPackageNamed: selectedPackage].
		self refreshEmphasis ]