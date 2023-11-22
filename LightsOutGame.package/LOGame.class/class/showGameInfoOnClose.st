as yet unclassified
showGameInfoOnClose
	Transcript clear; 
		show: 'Last game click number: '; 
		show: self clickNumber;
		cr;
		show: 'The game has been launched ';
		show: instanceCount;
		show: ' times'; 
		open.