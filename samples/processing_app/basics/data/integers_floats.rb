# ruby integers are objects of class Fixnum or Bignum. The Fixnum and Bignum
# classes represent integers of differing sizes. Both classes descend from
# Integer (and therefore Numeric). The floating-point numbers are objects of
# class Float. Floats are used when more precision is needed. In java int and
# float are primitives, so you can't send them messages unlike ruby.

def setup
  size 200, 200
  stroke 255
  frame_rate 30
  @a = 0		# Create an instance variable "a" of class Integer
  @b = 0.0	# Create an instance variable "b" of class Float (because of "0.0")
end

def draw
  background 51
  @a += 1
  @b += 0.2
  line @a, 0, @a, height / 2
  line @b, height / 2, @b, height
  @a = 0 if @a > width
  @b = 0 if @b > width
end
