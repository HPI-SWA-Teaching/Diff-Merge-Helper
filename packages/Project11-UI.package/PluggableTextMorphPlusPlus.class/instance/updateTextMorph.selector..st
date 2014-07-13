accessing
updateTextMorph: actionTarget selector: actionSelector
	textMorph ifNil: [^nil].
	textMorph actionTarget: actionTarget.
		textMorph actionSelector: actionSelector.