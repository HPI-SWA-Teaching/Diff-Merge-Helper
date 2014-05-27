patching
patchRelativeToBase: aSnapshot with: ancestorSnapshot 
	^ MCPatch fromAncestor: ancestorSnapshot  target:  self local:  aSnapshot .