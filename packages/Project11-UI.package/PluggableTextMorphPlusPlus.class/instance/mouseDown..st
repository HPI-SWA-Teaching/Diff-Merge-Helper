as yet unclassified
mouseDown:evt
	self actionTarget ifNil: [^self].
	self actionSelector ifNil: [^self].
	self actionTarget perform: actionSelector.