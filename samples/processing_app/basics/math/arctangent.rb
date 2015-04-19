# Move the mouse to change the direction of the eyes.
# The atan2() function computes the angle from each eye
# to the cursor.
attr_reader :eyes

def setup
  size 640, 360
  @eyes = [
    Eye.new(420, 230, 220),
    Eye.new(250,  16, 120),
    Eye.new(164, 185,  80)
  ]
  no_stroke
end

def draw
  background 102
  eyes.each do |eye|
    eye.update mouse_x, mouse_y
    eye.display
  end
end

# Using Processing::Proxy to mimic java inner class access
class Eye
  include Processing::Proxy

  attr_reader :angle, :x, :y, :size
  def initialize(x, y, sz) # contructor, called by Eye.new
    @x, @y, @size = x, y, sz
  end

  def update(mx, my)
    @angle = atan2(my - y, mx - x)
  end

  def display
    push_matrix
    translate x, y
    fill 255
    ellipse 0, 0, size, size
    rotate angle
    fill 153
    ellipse size / 4, 0, size / 2, size / 2
    pop_matrix
  end
end
