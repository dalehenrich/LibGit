private-accessing
rawBuffer
	self signalIfNotReady.
	
	"freeing not required (see http://libgit2.github.com/libgit2/#HEAD/group/blob/git_blob_rawcontent)"
	^ self blob_rawcontent: self