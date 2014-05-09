menus
openSingleMessageBrowser
	| msgName mr |
	"Create and schedule a message list browser populated only by the currently selected message"

	(msgName := self selectedMessageName) ifNil: [^ self].

	mr := MethodReference
		class: self selectedClassOrMetaClass
		selector: msgName.

	self systemNavigation 
		browseMessageList: (Array with: mr)
		name: mr asStringOrText
		autoSelect: nil