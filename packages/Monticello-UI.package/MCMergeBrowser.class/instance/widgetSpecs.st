as yet unclassified
widgetSpecs
	Preferences annotationPanes ifFalse: [ ^#(
		((buttonRow) (0 0 1 0) (0 0 0 30))
		((listMorph:selection:menu:keystroke: list selection methodListMenu: methodListKey:from:) (0 0 1 0.4) (0 30 0 0))
		((innerButtonRow) (0 0.4 1 0.4) (0 0 0 30))
		((textMorph: text) (0 0.4 1 1) (0 30 0 0))
		)].

	^ {
		#((buttonRow) (0 0 1 0) (0 0 0 30)).
		#((listMorph:selection:menu:keystroke: list selection methodListMenu: methodListKey:from:) (0 0 1 0.4) (0 30 0 0)).
		#((innerButtonRow) (0 0.4 1 0.4) (0 0 0 30)).
		"{ #(textMorph: annotations). #(0 0.4 1 0.4). { 0. 30. 0. 30+self defaultAnnotationPaneHeight. }}."
		{ #(textMorph: obsoletionSource). #(0 0.33 0.33 1). { 0. 30+self defaultAnnotationPaneHeight. 0. 0.}}.
		{ #(textMorph: finalSource). #(0.33 0.33 0.66 1). { 0. 30+self defaultAnnotationPaneHeight. 0. 0.}}.
		{ #(textMorph: modificationSource). #(0.66 0.33 1 1). { 0. 30+self defaultAnnotationPaneHeight. 0. 0.}}.
	}