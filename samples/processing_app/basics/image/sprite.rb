# Sprite (Teddy)
# by James Patterson.
#
# Demonstrates loading and displaying a transparent GIF image.
# Also ruby-processings clip to range method (cf processing constrain)
attr_reader :drag, :teddy, :xpos, :ypos

def setup
  size 200, 200
  @teddy = load_image 'teddy.gif'
  @xpos, @ypos = width / 2, height / 2
  @drag = 30.0
  frame_rate 60
end

def draw
  background 102
  difx = mouse_x - xpos - teddy.width / 2
  if difx.abs > 1.0
    @xpos += difx / drag
    @xpos = (0..width - teddy.width / 2).clip(xpos)
  end
  dify = mouse_y - ypos - teddy.height / 2
  if dify.abs > 1.0
    @ypos += dify / drag
    @ypos = (0..height - teddy.height / 2).clip(ypos)
  end
  image teddy, xpos, ypos
end
