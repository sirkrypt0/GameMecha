as yet unclassified
newWithImage: imageName from: cache placeHolder: color
	^ self new
		color: color;
		initializeImage: imageName fromCache:  cache;
		yourself.