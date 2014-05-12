menus
methodListMenu: aMenu
	selection ifNotNil:
		[aMenu addList:#(
			('install'	 installSelection)
			('revert'	 revertSelection)
			-)].
	self unchangedMethods ifNotEmpty:
		[aMenu addList:#(
			('revert unchanged methods...'	revertUnchangedMethods)
			-)].
	super methodListMenu: aMenu.
	^ aMenu
