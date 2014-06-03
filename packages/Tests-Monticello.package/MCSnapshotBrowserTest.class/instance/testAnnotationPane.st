testing
testAnnotationPane
	| oldPref |
	oldPref := Preferences annotationPanes.

	Preferences disable: #annotationPanes.
	self buildWindow.
	self assert: (self morphsOfClass: TextMorph) size = 1.

	Preferences enable: #annotationPanes.
	self buildWindow.
	self assert: (self morphsOfClass: TextMorph) size = 2.

	Preferences setPreference: #annotationPanes toValue: oldPref