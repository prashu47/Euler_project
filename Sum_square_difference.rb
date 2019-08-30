# frozen_string_literal: true

# The sum of the squares of the first ten natural numbers is,
# 12 + 22 + ... + 102 = 385
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10)2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

#=============================================================================================================================#

def sum_square_difference
  diff = sumsq - sqsum
end

def sqsum
  sum = (1..100)
  sum.inject { |sum, num| sum + num**2 }
end

def sumsq
  sum = (1..100).inject { |sum, num| sum + num }
  sum**2
end

puts sum_square_difference

# or

#------------------------------------------------------------------------------#
#
# def sum_square_difference(n)
#       return (((n**2) * (n + 1)**2) / 4) - (n * (n + 1) * (2*n + 1) / 6)
# end
# puts sum_square_difference(100)

#========================================================================#
