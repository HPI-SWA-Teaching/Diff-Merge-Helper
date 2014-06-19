building
newTextSpecWith: builder
	^ builder pluggableTextSpec new 
		model: self model;
		frame: self frame;
		yourself