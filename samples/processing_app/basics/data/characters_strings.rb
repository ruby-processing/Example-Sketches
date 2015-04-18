attr_reader :letter, :words, :fkey, :fstring

def setup
  size 640, 360
  @words = 'Begin...'
  # Create the font
  text_font create_font('Georgia', 36)
  @fkey = 'Current key: %s'
  @fstring = 'The String is %s characters long'
end

def draw
  background(0) # Set background to black
  # Draw the letter to the center of the screen
  text_size(14)
  text('Click on the program, then type to add to the String', 50, 50)
  text(format(fkey, letter), 50, 70)
  text(format(fstring, words.length), 50, 90)
  text_size(36)
  text(words, 50, 120, 540, 300)
end

def key_pressed
  # The variable 'key' always contains the value
  # of the most recent key pressed.
  return unless ('A'..'z').include?(key) || key == ' '
  @letter = key
  @words = words + key
  puts(key)
end
