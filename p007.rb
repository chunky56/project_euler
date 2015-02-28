require 'prime'

def get_10001st_prime
  return Prime.first(10001).last
end

def get_10001st_prime_2
  primes = []
  (2..1000000).each do |i|
    primes << i if is_prime?(i)
  end
  return primes[10000]
end

def is_prime?(num)
  (2..Math.sqrt(num)).each do |i|
    return false if (num % i == 0)
  end
  return true
end

puts get_10001st_prime
puts get_10001st_prime_2