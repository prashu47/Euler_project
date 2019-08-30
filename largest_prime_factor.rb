# frozen_string_literal: true

# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?
#--------------------------------------------------------------------------------#
def largest_prime_factor(num)
  primefactor = 2
  while primefactor < num
    if num % primefactor == 0
      num = num/primefactor
      primefactor = 2
    else
      primefactor = primefactor + 1
    end
  end
  primefactor
    end

puts largest_prime_factor(600_851_475_143)

##########################
# def largest_prime_factor(num):
#     i = 2
#     while i * i < num:
#         while num % i == 0:
#             num = num / i
#         i = i + 1
#     return num
#   end
#
# puts largest_prime_factor(600_851_475_143)
