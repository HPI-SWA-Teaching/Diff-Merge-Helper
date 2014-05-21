handling
defaultAction
	^ MCSaveVersionDialog new
		versionName: suggestion;
		logMessage: initialMessage;
		showModally