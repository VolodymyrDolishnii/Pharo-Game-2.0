initialization
initialize
 | sampleCell width height n |
super initialize.
n := self cellsPerSide.
sampleCell := LOCell new.
instanceCount = nil ifTrue: [ 
		instanceCount := 0. 
	] ifFalse: [ 
		instanceCount := instanceCount + 1.
	].
width := sampleCell width.
height := sampleCell height.
self bounds: (50@50 extent: ((width*n) @(height*n)) + (5 * self borderWidth)).
cells := Array2D  new: n tabulate: [ :i :j | self newCellAt: i at: j ].