Diff3 provides a three-way-merge algorithm suitable for performing textual merges, such as are often required as part of source-code version control systems.

Instance Variables
	diffClass:	<Class> Should be a subclass of GenericDiff. Used to resolve changes.
	file0:		<SequenceableCollection> The ancestral file.
	file1:		<SequenceableCollection> The left branch.
	file2:		<SequenceableCollection> The right branch.

-- 
Copyright (c) 2008 Tony Garnock-Jones <tonyg@lshift.net>
Copyright (c) 2008 LShift Ltd. <query@lshift.net>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction,including without limitation the rights to use, copy, modify, merge,publish, distribute, sublicense, and/or sell copies of the Software,and to permit persons to whom the Software is furnished to do so,subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
