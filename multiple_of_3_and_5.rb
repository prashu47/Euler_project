# frozen_string_literal: true

# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.
#---------------------------------------------------------------------------------------------------------------------------------#

def process_range(range)
  multi = multiple_of_3_and_5(range - 1)
  sum = addition(multi)

  puts sum
end

def multiple_of_3_and_5(range)
  array = []
  (1..range).each do |number|
    array.push number if number % 3 == 0 || number % 5 == 0
    # array.push number if 3.step(range, 3) || 5.step(range, 5)
  end
  array
  end

def addition(multi)
  sum = 0
  multi.each do |number|
    sum += number
  end
  sum
end
# puts multiple(100)
#
# def multiple_of_5(range)
#   (1..range).each do |number|
#     array << number % 3 == 0
#   end
#   array
# end
# puts multiple(100)

process_range(ARGV[0].to_i)
