morphic ui
packageHighlight: aString 
	^ (loaded anySatisfy:
		[ : each | (self class browseBranchedVersionsSeparately
					ifTrue: [each packageAndBranchName]
					ifFalse: [each packageName]) = aString ])
		ifTrue:
			[ Text
				string: aString
				attribute:
					(TextEmphasis new emphasisCode:
						((newer includes: aString)
							ifTrue: [ 5 ]
							ifFalse: [ 4 ])) ]
		ifFalse: [ aString ]