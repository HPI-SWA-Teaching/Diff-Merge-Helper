helpers
instance
	^ (Diff3 new file0: self text0;
				 file1: self text1;
				 file2: self text2;
				 diffClass: HuntMcilroyDiff)