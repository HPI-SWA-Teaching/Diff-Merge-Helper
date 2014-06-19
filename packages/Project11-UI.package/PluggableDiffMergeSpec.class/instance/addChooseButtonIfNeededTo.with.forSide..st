choose buttons
addChooseButtonIfNeededTo: aPanel with: aWrapper forSide: aSelector 
	(aWrapper diff3Block isConflict
			and: [(aWrapper perform: aSelector) notNil])
		ifTrue: [self
				addChooseButtonTo: aPanel
				with: aWrapper
				forSide: aSelector]