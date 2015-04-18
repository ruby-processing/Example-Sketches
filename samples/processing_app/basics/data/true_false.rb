# Boolean data is one bit of information. True or false.
# It is common to use Booleans with control statements to
# determine the flow of a program. In this example, when the
# boolean value "x" is true, vertical black lines are drawn and when
# the boolean value "x" is false, horizontal gray lines are drawn.

# In Ruby, false and nil are "falsy" ... they are the only things
# that will fail an "if" test. Absolutely everything else passes "if".

def setup
  size(640, 360)
  background 0
  stroke 0
  middle = width / 2
  d = 20
  (d..width).step(d) do |i|
    x = i < middle   # Evaluates to true or false, depending on i
    if x
      stroke 255
      line i, 1, i, height - 1
    end
    next if x        # favour guard clause in ruby to a wrapped loop
    stroke 126
    line middle, i - middle + d, width - d, i - middle + d
  end
end
