libgit - calls
remote_create: out repo: repo name: name url: urlString
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_remote_create(LGitRemote * out, LGitRepository repo, String name, String urlString)) options: #(  )