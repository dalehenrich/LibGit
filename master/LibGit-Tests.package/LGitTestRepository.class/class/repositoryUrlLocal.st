accessing
repositoryUrlLocal
	^ repositoryUrlLocal ifNil: [ 
		repositoryUrlLocal := UIManager default request: 'Local URL to the repository (file:///home/foo/repo)?' ]