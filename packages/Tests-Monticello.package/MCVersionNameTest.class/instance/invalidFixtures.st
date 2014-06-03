as yet unclassified
invalidFixtures
	^ {String empty. 'abc'. '123' } collect: [ : each | each asMCVersionName ]