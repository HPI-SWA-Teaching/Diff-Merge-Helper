morphic ui
versionList
	| result |
	result := selectedPackage
		ifNil: [ self versionNamesForNoPackageSelection ]
		ifNotNil: [ self versionNamesForSelectedPackage ].
	"Not sure why we need this ugly Error trapping here.."
	(self orderSpecs at: order) value ifNotNil:
		[ : sortBlock | result sort:
			[ : a : b | [ sortBlock
				value: a
				value: b ]
				on: Error
				do: [ true ] ] ].
	^ result collect:
		[ : each | self versionHighlight: each ]