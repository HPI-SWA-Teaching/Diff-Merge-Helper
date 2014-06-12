text morphs
setTextPropertiesFor: aTextMorph basedOn: aString
	aTextMorph
		color: (self chooseColorFor: aString);
		borderWidth: (self chooseBorderWidthFor: aString)
	