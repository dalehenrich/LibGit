foreign interface
revwalk_repository: walk 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LG2GitRepositoryO git_revwalk_repository(#LGitRevwalkType walk)) options: #(  )