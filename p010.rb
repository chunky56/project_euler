require 'prime'

def sum_of_primes(num)
  return get_primes(num).reduce(:+)
end

def sum_of_primes_2(num)
  Prime.each(num).reduce(:+)
end

def get_primes(num)
  primes = []
  (2..num).each do |i|
    primes << i if is_prime?(i)
  end
  return primes
end

def is_prime?(num)
  (2..Math.sqrt(num)).each do |i|
    return false if (num % i == 0)
  end
  return true
end

#puts sum_of_primes(1999999)
puts sum_of_primes_2(1999999)