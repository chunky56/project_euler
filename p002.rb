def fib
  fibs = []
  prev2 = 1
  prev1 = 2
  fibs << prev2
  fibs << prev1
  next_fib = prev2 + prev1

  while next_fib <= 4000000
    fibs << next_fib
    prev2 = prev1
    prev1 = next_fib
    next_fib = prev2 + prev1
  end

  fibs
end

puts fib.select{|x| x.even?}.reduce(&:+)