foreign interface
reference_is_branch: ref 
	<primitive: #primitiveNativeCall module: #NativeBoostPlugin error: errorCode>
	^self call: #(NBInt32 git_reference_is_branch(LG2GitReferenceO ref)) options: #(  )