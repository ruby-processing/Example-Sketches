#
# Euler Integration (v01)
# pos  +=  spd
# sketch after Ira Greenwood 
# Features use of modules
#
load_library :vecmath
require_relative 'euler_ball'

attr_reader :ball

def setup
  size(400, 400)
  smooth 4
  @ball = EulerBall.new(
    Vec2D.new(width / 2, height / 2),
    # create a random direction vector, scaled by 3
    Vec2D.random * 3,
    10
  )
end

def draw
  background(255)
  # fill(255, 2)
  # rect(-1, -1, width + 1, height + 1)
  fill(0)
  ball.run
end
