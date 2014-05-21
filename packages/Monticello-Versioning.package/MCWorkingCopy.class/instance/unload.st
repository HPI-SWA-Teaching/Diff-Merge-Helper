operations
unload
	MCPackageLoader unloadPackage: self package.
	self unregisterSubpackages.
	self unregister.