patching
patchRelativeToBase: localSnapshot with: ancestorSnapshot

	^ MCPatch fromAncestor: ancestorSnapshot  target: self local: localSnapshot