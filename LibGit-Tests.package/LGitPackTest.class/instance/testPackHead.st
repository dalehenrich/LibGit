tests
testPackHead
	| repo head |
	repo := self newRepo state4WithCommit.
	repo open.
	repo packHead.
		
	[
		self assert: repo exists.
		self deny: repo isBare.
		self deny: repo isEmpty.
		self assert: repo isInitialized.
		self assert: repo isOpen.
		self assert: repo isProperRepository.

		head := repo head object.
		self assert: head isCommit.
		self assert: head tree isTree.
		self assert: head author name equals: 'Bart Simpson'.
		self assert: head message equals: 'push test'.
		self assert: head tree entries first entries first object contents equals: 'eat my shorts'.
		self assert: head parents isEmpty.
		"only pack directory left"
		self assert: (repo repositoryReference / '.git'/ 'objects') children size equals: 1
	]
		on: Error do: [ :ex | AssertionFailure signal ]	