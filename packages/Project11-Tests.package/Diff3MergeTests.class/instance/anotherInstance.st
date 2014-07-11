helpers
anotherInstance
	^ (Diff3 new file0: self anotherText0;
				 file1: self anotherText1;
				 file2: self anotherText2;
				 diffClass: HuntMcilroyDiff)