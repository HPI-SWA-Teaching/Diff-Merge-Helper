building
buildWith: builder
	| scrollSpec textSpec merge panelSpec tool |
	tool := DiffMergeTool new
		model: self model;
		getMergeSelector: self getMergeSelector;
		yourself.
	panelSpec := builder pluggablePanelSpec new
				model: tool;
				children: OrderedCollection new;
				layout: #vertical;
				frame: self frame.
	
	scrollSpec := builder pluggableScrollPaneSpec new.
	scrollSpec
		model: self model;
		layout: #vertical;
		frame: self frame;
		children: OrderedCollection new.

	merge := self model perform: self getMergeSelector.
	merge ifNotNil: 
		[merge blocks
			do: [:block | 
		textSpec := builder pluggableTextSpec new.
		textSpec
			model: (Diff3BlockUIWrapper wrap: block);
			getText: #result;
			setText: #customizedResult:.
		scrollSpec children add: textSpec.]].
	

	self model addDependent: tool.
	tool mainPanel: (builder build: panelSpec).
	^ tool mainPanel