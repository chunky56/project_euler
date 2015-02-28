def largest_palindrome_product
  largest = -1

  (100..999).each do |i|
    (i..999).each do |j|
      prod = i*j
      prod_str = prod.to_s
      if prod_str.reverse == prod_str && prod > largest then
        largest = prod
      end
    end
  end

  largest
end

puts largest_palindrome_product
