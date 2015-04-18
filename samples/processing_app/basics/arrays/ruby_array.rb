# An array is a list of data. Each piece of data in an array
# In ruby it is quite usual to initialize an array with a map, here we
# also use ruby-processing map1d (in place of vanilla processing map)
# Note how much more compact ruby-processing version is...

def setup
  size 640, 360
  coswave = (0..width).map { |i| cos(map1d(i, (0..width), (0..PI))).abs }
  coswave.each_with_index do |value, i|
    stroke(value * 255)
    line(i, 0, i, height / 3)
    stroke(value * 255 / 4)
    line(i, height / 3, i, height / 3 * 2)
    stroke(255 - value * 255)
    line(i, height / 3 * 2, i, height)
  end
end
