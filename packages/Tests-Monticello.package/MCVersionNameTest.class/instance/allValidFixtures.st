as yet unclassified
allValidFixtures
	^ self standardFixtures , (self diffyFixtures pairsCollect: [:diffy :base | diffy])