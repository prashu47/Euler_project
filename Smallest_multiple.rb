# frozen_string_literal: true

# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
#-------------------------------------------------------------------------------------------------------#

# def find_multiple
#   lcm = 1
#
#   (2..20).each do |i|
#     lcm *= i / gcd(lcm, i)
#   end
#
#   lcm
# end
#
# def gcd(a, b)
#   while b > 0
#     a %= b
#     return b if a == 0
#     b %= a
#   end
#
#   a
# end
#
# puts find_multiple

#---------------------------------------------------------------------------------------------------#
def smallest
  num = 0
  loop do
    num += 1
    break if is_divisible(num)
  end
  puts num
end

def is_divisible(num)
  (1..20).all? { |i| num % i == 0 }
end
smallest
