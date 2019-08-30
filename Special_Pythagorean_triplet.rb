# frozen_string_literal: true

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
# For example, 32 + 42 = 9 + 16 = 25 = 52.
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
#---------------------------------------------------------------------------------------------------#
def sqr(x)
  x * x
end

def pythagoreanTriplet(n)
  (0..1000).each do |x|
    (0..1000).each do |y|
      (0..1000).each do |z|
        if sqr(x) + sqr(y) == sqr(z) && x + y + z == n
          puts "#{x}#{y}#{z} #{x * y * z}"
        end
      end
    end
  end
end
pythagoreanTriplet(1000)
