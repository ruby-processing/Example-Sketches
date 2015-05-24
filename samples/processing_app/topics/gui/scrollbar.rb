#
# Scrollbar.
#
# Move the scrollbars left and right to change the positions of the images.
#
attr_reader :hs1, :hs2, :img1, :img2

def setup
  size(640, 360)
  no_stroke
  @hs1 = HScrollbar.new(0, height / 2 - 8, width, 16, 16)
  @hs2 = HScrollbar.new(0, height / 2 + 8, width, 16, 16)
  # Load images
  @img1 = load_image('seedTop.jpg')
  @img2 = load_image('seedBottom.jpg')
end

def draw
  background(255)
  # Get the position of the img1 scrollbar
  # and convert to a value to display the img1 image
  img1_pos = hs1.position - width / 2
  fill(255)
  image(img1, width / 2 - img1.width / 2 + img1_pos * 1.5, 0)
  # Get the position of the img2 scrollbar
  # and convert to a value to display the img2 image
  img2_pos = hs2.position - width / 2
  fill(255)
  image(img2, width / 2 - img2.width / 2 + img2_pos * 1.5, height / 2)
  hs1.update
  hs2.update
  hs1.display
  hs2.display
  stroke(0)
  line(0, height / 2, width, height / 2)
end

# Scrollbar class
class HScrollbar
  include Processing::Proxy
  attr_reader :swidth, :sheight, :xpos, :ypos, :spos, :newspos, :bound_x
  attr_reader :spos_max, :spos_min, :loose, :over, :locked, :ratio, :bound_y
  def initialize(xp, yp, sw, sh, l)
    @swidth = sw
    @sheight = sh
    widthtoheight = sw - sh
    @ratio = sw.to_f / widthtoheight
    @xpos = xp
    @ypos = yp - sheight / 2
    @spos = xpos + swidth / 2 - sheight / 2
    @newspos = spos
    @spos_min = xpos
    @spos_max = xpos + swidth - sheight
    @loose = l
    @bound_x = Boundary.new(xpos, xpos + swidth)
    @bound_y = Boundary.new(ypos, ypos + sheight)
  end

  def update
    if !mouse_pressed?
      @locked = false
    else
      @locked = mouse_pressed? && over_event?
    end
    @newspos = (spos_min..spos_max).clip(mouse_x - sheight / 2) if locked
    @spos = spos + (newspos - spos) / loose if (newspos - spos).abs > 1
  end

  def over_event?
    bound_x.include?(mouse_x) && bound_y.include?(mouse_y)
  end

  def display
    no_stroke
    fill(204)
    rect(xpos, ypos, swidth, sheight)
    if over || locked
      fill(0, 0, 0)
    else
      fill(102, 102, 102)
    end
    rect(spos, ypos, sheight, sheight)
  end

  def position
    # Convert spos to be values between
    # 0 and the total width of the scrollbar
    spos * ratio
  end
end

# simple Boundary class
class Boundary
  attr_reader :low, :high

  def initialize(low, high)
    @low, @high = low, high
  end

  def include?(val)
    (low..high).include? val
  end
end
