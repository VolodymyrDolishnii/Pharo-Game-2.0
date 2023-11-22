as yet unclassified
countActiveCells
	|cells active|
	(TheGame isKindOf: self) ifTrue: [ 
		cells := TheGame cells.
		active := 0.
		1 to: cells rowCount do: [ :row |
			1 to: cells columnCount do: [ :col |
				(cells at: row at: col) isOn ifTrue: [ 
						active := active + 1.
					 ].
			]. 
		].
		^active.
	].