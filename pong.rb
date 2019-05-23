require 'ruby2d'

set title: "Pong"

net = Rectangle.new(
  x: (Window.width / 2) - 5, y: 0,
  width: 10, height: Window.height,
  color: 'white',
  z: 0
)

@left_player = Rectangle.new(
  x: 20, y: (Window.height / 2)-40,
  width: 15, height: 80,
  color: 'white',
  z: 0
)

@y_speed = 0

on :key_down do |event|
  if event.key == 'w'
    @y_speed = -2
  elsif event.key == 's'
    @y_speed = 2
  end
end

update do
  @left_player.y += @y_speed
end

right_player = Rectangle.new(
  x: Window.width - 35, y: (Window.height / 2)-40,
  width: 15, height: 80,
  color: 'white',
  z: 0
)

ball = Circle.new(
  x: (Window.width / 2), y: 15,
  radius: 10,
  sectors: 32,
  color: 'green',
  z: 10
)
show
