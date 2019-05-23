require 'ruby2d'

set title: "Pong"

net = Rectangle.new(
  x: (Window.width / 2) - 5, y: 0,
  width: 10, height: Window.height,
  color: 'white',
  z: 0
)

left_player = Rectangle.new(
  x: 20, y: (Window.height / 2)-40,
  width: 15, height: 80,
  color: 'white',
  z: 0
)

right_player = Rectangle.new(
  x: Window.width - 35, y: (Window.height / 2)-40,
  width: 15, height: 80,
  color: 'white',
  z: 0
)


show
