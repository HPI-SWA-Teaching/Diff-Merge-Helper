building
buildWith: aBuilder
	builder := aBuilder.
	self model addDependent: self.
	morph := super buildWith: aBuilder.
	morph changeTableLayout
	  listDirection: #topToBottom;
	  hResizing: #spaceFill;
	  vResizing: #spaceFill;
	  layoutInset: 0;
	  cellInset: 2.
	"morph := Morph new
		changeTableLayout;
		listDirection: #topToBottom;
		cellInset: 2;
		hResizing: #spaceFill;
		vResizing: #spaceFill."
	scroll1 := ScrollPane new.
	"scroll1 scroller addMorph: morph.
	morphOutside addMorph: scroll1."
	^ morph
	