general
get: name ifAbsentPut: computeBlock
	^ self getDirectly: (self normalizeFileName: name) ifAbsentPut: computeBlock.