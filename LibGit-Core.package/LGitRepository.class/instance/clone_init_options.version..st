libgit - calls
clone_init_options: opts version: version 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_clone_init_options(LGitCloneOptions  * opts, int version)) options: #(  )