tests
testSpecies

	self
		assert: ByteString equals: 'Package-author.123.mcz' asMCVersionName versionName class;
		assert: ByteString equals: 'Package-author.123' asMCVersionName versionName class