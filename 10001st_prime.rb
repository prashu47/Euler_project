#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13. than What is the 10001st prime number?
#===========================================================================================================================================#

def is_prime(n)
    2.upto(n / 2) do |i|
      return false if n % i == 0
      i = i+1
    end
  end

  def range(number)
    count = 0
    num = 0
    while (count<=number)
      num = num + 1
      count = count + 1 if is_prime(num)
    end
    num
  end
  p range(10001)
