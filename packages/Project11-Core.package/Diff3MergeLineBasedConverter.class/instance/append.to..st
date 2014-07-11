as yet unclassified
append: aString to: anotherString
	aString
		ifNil: [anotherString
				ifNil: [^ nil]
				ifNotNil: [^ anotherString]]
		ifNotNil: [anotherString
				ifNil: [^ aString]
				ifNotNil: [^ anotherString , aString]]