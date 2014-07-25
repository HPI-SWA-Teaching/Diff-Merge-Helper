I am representing a non-conflicting block of a Diff3Merge.
I provide some basic interface for an interactive merge, i.e. allowing to choose the code snippet of the local, ancestor or remote version.
A customized string can also be defined.
Because I am not a conflict, there will be only one of local, ancestor or remote filled with a non-nil string (indicated by Diff3Block>>choice).