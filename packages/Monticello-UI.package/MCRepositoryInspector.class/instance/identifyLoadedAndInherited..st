morphic ui
identifyLoadedAndInherited: aMCWorkingCopy 
	| seen |
	seen := Set new.
	aMCWorkingCopy ancestors do:
		[ : ancestor | loaded add: ancestor versionName.
		seen add: ancestor.
		ancestor ancestorsDoWhileTrue:
			[ : heir | (seen includes: heir)
				ifTrue: [ false ]
				ifFalse:
					[ inherited add: heir versionName.
					seen add: heir.
					true ] ] ]