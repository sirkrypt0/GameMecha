accessing
step
	super step.
	submorphs do: [:sub | sub step.].
	self keyBoardKeys at: 87 ifAbsentPut: false.
	self keyBoardKeys at: 65 ifAbsentPut: false.
	self keyBoardKeys at: 83 ifAbsentPut: false.
	self keyBoardKeys at: 68 ifAbsentPut: false.
	
	(self keyBoardKeys at: 87) ifTrue:
	[ball position: ball position + (0@(-1))].
	
	(self keyBoardKeys at: 65) ifTrue:
	[ball position: ball position + (-1@0)].
	
	(self keyBoardKeys at: 83) ifTrue:
	[ball position: ball position + (0@1)].
	
	(self keyBoardKeys at: 68) ifTrue:
	[ball position: ball position + (1@0)].