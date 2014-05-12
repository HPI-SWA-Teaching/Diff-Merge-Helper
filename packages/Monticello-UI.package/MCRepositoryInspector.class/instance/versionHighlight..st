morphic ui
versionHighlight: aMCVersionName
	inherited ifNil: [inherited := #()].
	^Text
		string: aMCVersionName
		attribute: (TextEmphasis new emphasisCode: (
			((loaded includes: aMCVersionName) ifTrue: [ 4 "underlined" ]
				ifFalse: [ (inherited includes: aMCVersionName)
					ifTrue: [ 0 ]
					ifFalse: [ 1 "bold" ] ])))