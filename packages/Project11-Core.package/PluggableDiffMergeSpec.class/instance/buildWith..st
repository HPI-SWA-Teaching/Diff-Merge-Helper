building
buildWith: aBuilder
	| scroll2 scroll3 |
	builder := aBuilder.
	self model addDependent: self.
	morph := super buildWith: aBuilder.
	morph layoutPolicy: TableLayout new;
	  listDirection: #topToBottom;
	  wrapCentering: #topLeft;
	  hResizing: #spaceFill;
	  vResizing: #spaceFill;
	  layoutInset: 0;
	  cellInset: 2;
	  rubberBandCells: false;
	  clipSubmorphs: true.
	scroll1 := ScrollPane new.
	scroll2 := ScrollPane new.
	scroll3 := ScrollPane new.
	"merge := self model perform: self getMerge.
	merge ifNotNil: 
		[merge blocks do: [:block | morph addMorphBack: (self buildPanelFor: block with: aBuilder)]]."
	"textFinal := aBuilder pluggableTextSpec new.
	textFinal 
		model: self model;
		getText: #finalSource; 
		setText: (#finalSource, ':') asSymbol;
		frame: self frame.
	textLocal := aBuilder pluggableTextSpec new.
	textLocal 
		model: self model;
		getText: #obsoletionSource; 
		setText: (#obsoletionSource, ':') asSymbol;
		frame: self frame.
	textRemote := aBuilder pluggableTextSpec new.
	textRemote 
		model: self model;
		getText: #modificationSource; 
		setText: (#modificationSource, ':') asSymbol;
		frame: self frame."
	"scroll1 scroller addMorph: (aBuilder buildPluggableCodePane: text1).
	scroll2 scroller addMorph: (TextMorph new contents: 'bla2'; yourself).
	scroll3 scroller addMorph: (TextMorph new contents: 'bla3'; yourself)."
	"morph addMorphBack: ((aBuilder buildPluggableText: textLocal) setText: merge local).
	morph addMorphBack: (aBuilder buildPluggableCodePane: textFinal).
	morph addMorphBack: (aBuilder buildPluggableCodePane: textRemote)."
	"scroll1 scroller addMorph: morph."
	morph addMorph: scroll1.
	^ morph
	