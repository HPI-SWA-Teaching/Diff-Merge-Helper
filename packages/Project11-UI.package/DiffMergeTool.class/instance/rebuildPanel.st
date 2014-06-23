updating
rebuildPanel

	| scrollSpec merge |
	scrollSpec := (ToolBuilder default) pluggableScrollPaneSpec new.
	scrollSpec
		model: self;
		layout: #vertical;
		frame: (0@0 corner: 1@1);
		children: OrderedCollection new.

	merge := self model perform: self getMergeSelector.
	merge ifNotNil: 
		[merge blocks
			do: [:block | scrollSpec children add: (self newPanelSpecFor: block)]].
		
	self mainPanel removeAllMorphs.
	self mainPanel addMorphBack: ((ToolBuilder default) build: scrollSpec)