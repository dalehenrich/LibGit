foreign interface
tree_lookup_prefix: out repo: repo id: id len: len 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_tree_lookup_prefix(LG2GitTreeO * out, LG2GitRepositoryO repo, git_oid * id, NBInt32 len)) options: #(  )