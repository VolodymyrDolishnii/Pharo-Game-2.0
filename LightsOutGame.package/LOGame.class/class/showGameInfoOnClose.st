as yet unclassified
showGameInfoOnClose
	Transcript clear;
		show: 'Active cells count: '; 
		show: self countActiveCells;
		cr; 
		show: 'Last game click number: '; 
		show: self clickNumber;
		cr;
		show: 'The game has been launched ';
		show: instanceCount;
		show: ' times'; 
		open.