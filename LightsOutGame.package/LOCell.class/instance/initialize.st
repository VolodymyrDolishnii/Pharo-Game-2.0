initialization
initialize
  super initialize.
  self label: ''.
  self borderWidth: 2.
  bounds := 0@0 corner: 16@16.
  offColor := Color paleYellow.
  onColor := Color paleBlue darker.
  clickCount := 0.
  self useSquareCorners.
  self turnOff.