# frozen_string_literal: true

# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
#
# How many such routes are there through a 20×20 grid?
#==================================================================================#

def grid
  n = factorial(40)
  r = factorial(20)
  ncr =  n / (r*(n-r))
  ncr = factorial(40) / (factorial(20)*(factorial(40-20)))
  p ncr
end

def factorial(number)
  factorial = 1
  (1..number).each {|i| factorial = factorial * i}
  factorial
end
grid
