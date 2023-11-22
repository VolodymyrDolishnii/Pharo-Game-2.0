initialize-release
close
	(TheGame isKindOf: self) ifTrue: [
		self showGameInfoOnClose.
		TheGame delete.
		TheGame := nil.
	].