def sum_of_multiples_three_five
  (1...1000).select{|i| i%3==0 || i%5==0}.reduce(0,:+)
end

puts sum_of_multiples_three_five