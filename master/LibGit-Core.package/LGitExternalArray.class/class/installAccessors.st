private
installAccessors
	"Copy superclass methods, which serve as a template where generated code will be installed.
	Each subclass of NBExternalArray should implement (override) these key methods "
	Author useAuthor: 'NativeBoost' during: [ 
		self basicAddSelector: #at: withMethod: (NBExternalArray >> #at: ) copy.
		self basicAddSelector: #at:put: withMethod: (NBExternalArray >> #at:put: ) copy.
		self organization classify:  #at: under: (self protocolForField: #at).
		self organization classify:  #at:put: under: (self protocolForField: #at:put:).
	].