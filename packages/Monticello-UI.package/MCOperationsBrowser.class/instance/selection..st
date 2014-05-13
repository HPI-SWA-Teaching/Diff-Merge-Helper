selecting
selection: aNumber
	selection := aNumber = 0 ifFalse: [self items at: aNumber].
	self changed: #selection; changed: #text; changed: #annotations; changed: #obsoletionSource; changed: #modificationSource; changed: #finalSource