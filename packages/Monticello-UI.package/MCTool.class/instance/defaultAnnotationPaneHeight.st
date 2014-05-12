morphic ui
defaultAnnotationPaneHeight 
	"Answer the receiver's preferred default height for new annotation panes.
	Since MC compares two annotations, reserve a bit less than a double the traditional height."
	^ (Preferences parameterAt: #defaultAnnotationPaneHeight ifAbsentPut: [25]) * 5 // 3