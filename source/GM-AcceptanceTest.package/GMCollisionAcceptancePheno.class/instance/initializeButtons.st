pheno
initializeButtons
	| button |
	
	self
		addStyleClass: #withPadding;
		add: (PHLabel subHeading: 'open the halos and move the morphs around');
		add: (PHButtonGroup new
			add: ((PHButton label: 'store "collision"')
				when: #clicked send: #storeCollision to: self);
			add: ((PHButton label: 'save tests')
				when: #clicked send: #save to: self);
			add: ((PHButton label: 'store "no collision"')
				when: #clicked send: #storeNoCollision to: self);
			add: (button := PHButton label: 'collision' iconSuffix: #iconCaret_down)).
	
	PHDropdown new
		add: ((PHDropdownItem label: 'Circle-Rectangle')
			when: #clicked send: #chooseCollisionScenario:with: to: self withArguments: {#circleCollisionMorph. #rectangleCollisionMorph});
		add: ((PHDropdownItem label: 'Circle-RotatedRectangle')
			when: #clicked send: #chooseCollisionScenario:with: to: self withArguments: {#circleCollisionMorph. #rotatedRectangleCollisionMorph});
		add: ((PHDropdownItem label: 'Rectangle-RotatedRectangle')
			when: #clicked send: #chooseCollisionScenario:with: to: self withArguments: {#rectangleCollisionMorph. #rotatedRectangleCollisionMorph});
		attachTo: button.