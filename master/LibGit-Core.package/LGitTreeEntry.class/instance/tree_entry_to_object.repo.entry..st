libgit - calls
tree_entry_to_object: object_out repo: repo entry: entry 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(LGitReturnCodeEnum git_tree_entry_to_object(LGitObject * object_out, LGitRepository repo, LGitTreeEntry entry)) options: #(  )