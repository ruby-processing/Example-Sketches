#  Demonstrates the syntax for creating a two-dimensional (2D) array.
#  Values in a 2D array are accessed through two index values.
#  2D arrays are useful for storing images. In this example, each dot
#  is colored in relation to its distance from the center of the image.

def setup
  size 640, 360
  distances = Array.new(width) { Array.new(height) } # [width][height]
  stroke_weight 2
  max_distance = dist(width / 2, height / 2, width, height)
  width.times do |x|
    height.times do |y|
      distance = dist(width / 2, height / 2, x, y)
      distances[x][y] = distance / max_distance * 255
    end
  end
  background 0
  row = []
  (0...width).step(2) do |x|
    row = distances[x]
    (0...height).step(2) do |y|
      stroke row[y]
      point x, y
    end
  end
end
