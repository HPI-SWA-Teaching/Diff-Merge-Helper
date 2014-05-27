private
sortHistory: anOrderedCollection
	^ anOrderedCollection sort: [ : a : b | a dateAndTime > b dateAndTime ]