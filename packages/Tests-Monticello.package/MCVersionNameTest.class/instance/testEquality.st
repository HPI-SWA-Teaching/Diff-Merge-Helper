tests
testEquality
	| standard mc |
	standard := 'Package-author.123.mcz'.
	mc := standard asMCVersionName.
	self
		 assert: standard = mc ;
		 assert: mc = standard.
	self assert: self allValidFixtures asSet size = 1