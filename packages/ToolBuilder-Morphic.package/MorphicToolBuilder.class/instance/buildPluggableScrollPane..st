widgets optional
buildPluggableScrollPane: spec

	| widget |
	widget := self scrollPaneClass new.
	widget model: spec model.
	self register: widget id: spec name.
	
	spec children
		ifNotNil: [:obj |
			"Create panel morph to scroll it."
			widget morph: (self pluggablePanelSpec new
				children: obj;
				layout: spec layout;
				frame: (0@0 corner: 1@1);
				buildWith: self).
			spec layout ~~ #proportional ifTrue: [
				"Fix #spaceFill resizing because it does not make sense in scroll pane."
				widget morph
					hResizing: #shrinkWrap;
					vResizing: #shrinkWrap.
				widget morph submorphsDo: [:m |
					m
						extent: 500@100;
						flag: #refactor; "mt: Restore orginial properties?"
						hResizing: #rigid;
						vResizing: #rigid]
				]]
		ifNil: [spec morph
			ifNotNil: [:m | widget morph: m]
			ifNil: [widget morphClass: spec morphClass]].
	
	self setFrame: spec frame in: widget.
	parent ifNotNil: [self add: widget to: parent].
	
	widget borderWidth: spec borderWidth.
	
	spec hScrollBarPolicy caseOf: {
		[#always] -> [widget alwaysShowHScrollBar: true].
		[#never] -> [widget hideHScrollBarIndefinitely: true].
		[#whenNeeded] -> [widget showHScrollBarOnlyWhenNeeded: true]}.
	spec vScrollBarPolicy caseOf: {
		[#always] -> [widget alwaysShowVScrollBar: true].
		[#never] -> [widget hideVScrollBarIndefinitely: true].
		[#whenNeeded] -> [widget showVScrollBarOnlyWhenNeeded: true]}.
	
	^ widget