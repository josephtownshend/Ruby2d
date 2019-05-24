require 'ruby2d'

set title: "Pong"

net = Rectangle.new(
  x: (Window.width / 2) - 5, y: 0,
  width: 10, height: Window.height,
  color: 'white',
  z: 0
)

@left_score = 0

@left_player_score = Text.new(
  "#{@left_score}",
  x: (Window.width)-450, y: 20,
  size: 100,
  color: 'white',
)

@right_score = 0

@right_player_score = Text.new(
  "#{@right_score}",
  x: (Window.width)-250, y: 20,
  size: 100,
  color: 'white',
)





@left_player = Rectangle.new(
  x: 20, y: (Window.height / 2)-40,
  width: 15, height: 80,
  color: 'white',
  z: 0
)

@y_speed_left_player = 0


@right_player = Rectangle.new(
  x: Window.width - 35, y: (Window.height / 2)-40,
  width: 15, height: 80,
  color: 'white',
  z: 0
)

@y_speed_right_player = 0

@ball = Circle.new(
  x: (Window.width / 2), y: 15,
  radius: 10,
  sectors: 32,
  color: 'green',
  z: 10
)

@x_speed_ball = 0
@y_speed_ball = 0


on :key_down do |event|
  if event.key == 'w'
    @y_speed_left_player = -2
  elsif event.key == 's'
    @y_speed_left_player = 2
  elsif event.key == 'up'
    @y_speed_right_player = -2
  elsif event.key == 'down'
    @y_speed_right_player = 2
  elsif event.key == 'space'
    @x_speed_ball = -2
    @y_speed_ball = 2
  end
end

update do
  @left_player.y += @y_speed_left_player
  @right_player.y += @y_speed_right_player
  @ball.x += @x_speed_ball
  @ball.y += @y_speed_ball

  if @left_player.y < 0 || @left_player.y > Window.height - 80
    @y_speed_left_player = 0
  end

  if @right_player.y < 0 || @right_player.y > Window.height - 80
    @y_speed_right_player = 0
  end

end



show
