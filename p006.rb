def diff_sum_sq_sq_sum(num)
  sum_sq = (1..num).to_a.map{|i|i**2}.reduce(:+)
  sq_sum = ((1..num).reduce(:+))**2
  diff = sum_sq > sq_sum ? sum_sq - sq_sum : sq_sum - sum_sq
end

puts diff_sum_sq_sq_sum(100)