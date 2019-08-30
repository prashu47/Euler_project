#2pow15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#What is the sum of the digits of the number 2pow1000?
#=========================================================#
def sum_of_digit(n)
  sum = 0
  n.to_s.each_char {|i| sum = sum + i.to_i}
  puts sum
end

num = 2**1000
sum_of_digit(num)
