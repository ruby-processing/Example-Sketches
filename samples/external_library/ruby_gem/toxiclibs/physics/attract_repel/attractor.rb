# The Nature of Code
# Daniel Shiffman
# http://natureofcode.com
class Attractor < Physics::VerletParticle2D
  include Processing::Proxy
  attr_accessor :r

  def initialize(loc, physics)
    super(loc)
    @r = 24
    physics.add_particle(self)
    physics.add_behavior(Physics::AttractionBehavior2D.new(self, $app.width, 0.1))
  end

  def display
    fill(0)
    ellipse(x, y, r * 2, r * 2)
  end
end
