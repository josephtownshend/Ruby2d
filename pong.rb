require 'ruby2d'

set title: "Pong"

net = Rectangle.new(
  x: (Window.width / 2) - 5, y: 0,
  width: 10, height: Window.height,
  color: 'white',
  z: 0
)



show
