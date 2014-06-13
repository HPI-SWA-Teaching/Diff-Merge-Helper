choose buttons
addChooseButtonTo: aPanel with: aWrapper forSide: aSelector 
	| label action |
	aSelector = #local
		ifTrue: [label := self class labelChooseLocalButton.
			action := [aWrapper chooseLocal]]
		ifFalse: [label := self class labelChooseRemoteButton.
			action := [aWrapper chooseRemote]].
	aPanel addMorphBack: (PluggableButtonMorphPlus new label: label;
			 color: Color white;
			 action: action;
			 yourself)