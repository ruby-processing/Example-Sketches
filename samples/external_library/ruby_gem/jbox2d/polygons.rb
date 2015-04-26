# Basic example of falling rectangles
require 'pbox2d'
require_relative 'lib/custom_shape'

attr_reader :box2d, :boundaries, :system

def setup
  size(640, 360)
  smooth
  @box2d = Box2D.new(self)
  box2d.init_options(gravity: [0, -20])
  box2d.create_world
  @system = ParticleSystem.new
  @boundaries = [
    Boundary.new(box2d, width / 4, height - 5, width / 2 - 50, 10, 0),
    Boundary.new(box2d, 3 * width / 4, height - 50, width / 2 - 50, 10, 0),
    Boundary.new(box2d, width - 5, height / 2, 10, height, 0),
    Boundary.new(box2d, 5, height / 2, 10, height, 0)
  ]
end

def draw
  background(255)
  # Display all the boundaries
  boundaries.each(&:display)
  # Display all the polygons
  system.run
end

def mouse_pressed
  system << CustomShape.new(box2d, mouse_x, mouse_y)
end
