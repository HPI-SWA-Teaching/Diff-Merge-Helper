I am a class holding all information needed to display a 3-way-merge.
I know the sources of a local, ancestor and remote version so that I can use my mergedIndices to create a collection of Diff3Blocks.
I also know if I am a solved merge or if I need user interaction due to remaining merge conflicts (i.e. my blocks contain an unsolved Diff3ConflictBlock).