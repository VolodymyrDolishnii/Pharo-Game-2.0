as yet unclassified
clickNumber
	|cells clicks|
	(TheGame isKindOf: self) ifTrue: [ 
		cells := TheGame cells.
		clicks := 0.
		1 to: cells rowCount do: [ :row |
			1 to: cells columnCount do: [ :col |
				clicks := clicks + (cells at: row at: col) clickCount.
			]. 
		].
		^clicks.
	].