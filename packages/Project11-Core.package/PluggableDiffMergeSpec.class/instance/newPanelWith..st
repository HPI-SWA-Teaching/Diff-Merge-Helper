building
newPanelWith: builder
	| panel |
	panel := builder pluggablePanelSpec new buildWith: builder.
	panel layoutPolicy: TableLayout new;
	  listDirection: #leftToRight;
	  wrapCentering: #topLeft;
	  hResizing: #spaceFill;
	  vResizing: #spaceFill;
	  layoutInset: 0;
	  cellInset: 2;
	  rubberBandCells: false.
	^ panel