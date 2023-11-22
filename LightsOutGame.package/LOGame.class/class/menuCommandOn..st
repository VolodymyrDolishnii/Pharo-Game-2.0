world menu
menuCommandOn: aBuilder
  <worldMenu>
(aBuilder item: #'LOGame')
 order: 5;
 with: [
  (aBuilder item: #'Run Game')
    order: 0;
    action: [self open].
  (aBuilder item: #'Active Cells count')
	 order: 1;
	 action: [ TheGame = nil ifTrue: [ 
				Transcript clear; show: 'Please start the new game.'; open.
			 ] ifFalse: [ 
				Transcript clear;
				show: 'Active cells count: '; 
				show: self countActiveCells;
				open.
			 ] ].
  (aBuilder item: #'Show clickCount')
	 order: 2;
	 action: [ TheGame = nil ifTrue: [ 
			Transcript clear; show: 'Please start the new game.'; open.
			 ] ifFalse: [ 
			 	Transcript clear; 
				show: 'Last game click number: '; 
				show: self clickNumber;
				open.
			]  ].
	(aBuilder item: #'Show the number of game launches')
    order: 3;
    action: [ 
		Transcript clear; 
		show: 'The game has been launched ';
		show: instanceCount;
		show: ' times'; 
		open.
	].
	(aBuilder item: #'Exit Game')
    order: 4;
    action: [self close].	
].
