# frozen_string_literal: true

# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

#--------------------------------------------------------------------------------#
def is_prime(n)
  2.upto(Integer.sqrt(n)) do |i|
    return false if n % i == 0

    i += 1
  end
end

def summation(range)
  sum = 0
  (2..range).each do |a|
    sum += a if is_prime(a)
  end
  sum
end
p summation(200_0000)
