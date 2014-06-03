tests
testVersionNameReturnsAByteString

	#(
		'Package-author.123.mcz'
		'Package-author.123'
		'Package-author.123(122).mcd'
		'Package-author.123(author2.122).mcd') do: [ :each |
			self assert: ByteString equals: each asMCVersionName versionName class ]