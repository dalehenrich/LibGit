foreign interface
revwalk_push_range: walk range: range 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_revwalk_push_range(#LGitRevwalkType walk, NBExternalString range)) options: #(  )