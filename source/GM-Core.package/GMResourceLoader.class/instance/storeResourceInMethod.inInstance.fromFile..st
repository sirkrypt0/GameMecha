as yet unclassified
storeResourceInMethod: aMethodSymbol inInstance: anInstance fromFile: aFilename
	self compileMethod: aMethodSymbol inInstance: anInstance fromString: (self stringFromFile: aFilename).