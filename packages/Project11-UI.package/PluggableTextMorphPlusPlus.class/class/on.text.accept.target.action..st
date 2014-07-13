as yet unclassified
on: anObject text: getTextSel accept: setTextSel target: anotherObject action: yetAnotherSelector
|me|
	me := super on: anObject text: getTextSel accept: setTextSel.
	me actionTarget: anotherObject.
	me actionSelector: yetAnotherSelector.
	me updateTextMorph: anotherObject selector: yetAnotherSelector.
	^me