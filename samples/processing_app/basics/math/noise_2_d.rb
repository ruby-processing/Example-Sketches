# Noise2D
# by Daniel Shiffman.
#
# Using 2D noise to create simple texture.

def setup
  size 640, 360
  @increment = 0.02
end

def draw
  background 0
  load_pixels
  xoff = 0.0
  detail = map1d(mouse_x, (0..width), (0.1..0.6))
  noise_detail(8, detail)
  (0...width).each do |x|
    xoff += @increment
    yoff = 0.0
    (0...height).each do |y|
      yoff += @increment
      bright = noise(xoff, yoff) * 255
      pixels[x + y * width] = color(bright)
    end
  end
  update_pixels
end
