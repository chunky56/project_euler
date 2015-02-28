def largest_prime_factor(num)
  factors = []

  primes = get_primes(10000)
  primes.each do |prime|
    factor = num / prime
    factor_f = num.to_f / prime.to_f
#    puts factor_f.to_s + " " + factor.to_s
    if factor_f % 1 == 0 then
#      puts "Adding " + prime.to_s + " to factors"
      factors << prime
      num /= prime
    end
    return factors.last if num <= 1
  end

  return nil
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

#puts largest_prime_factor(13195)
puts largest_prime_factor(600851475143)