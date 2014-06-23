updating
newPanelSpecFor: aDiff3Block
	| panelSpec localTextSpec wrapper remoteTextSpec resultTextSpec |
	wrapper := Diff3BlockUIWrapper wrap: aDiff3Block.
	panelSpec := (ToolBuilder default) pluggablePanelSpec new
		model: self;
		children: OrderedCollection new;
		layout: #horizontal;
		frame: (0@0 corner: 1@1).
	
	localTextSpec := (ToolBuilder default) pluggableTextSpec new.
	localTextSpec
		model: wrapper;
		getText: #local;
		setText: nil.
	
	resultTextSpec := (ToolBuilder default) pluggableTextSpec new.
	resultTextSpec
		model: wrapper;
		getText: #result;
		setText: #customizedResult:.
		
	remoteTextSpec := (ToolBuilder default) pluggableTextSpec new.
	remoteTextSpec
		model: wrapper;
		getText: #remote;
		setText: nil.
	
	panelSpec children add: localTextSpec.
	panelSpec children add: resultTextSpec.
	panelSpec children add: remoteTextSpec.	
	
	^ panelSpec
	