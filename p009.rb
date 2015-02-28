def special_pythagorean_triplet
  (1..998).each do |a|
    (2..999).each do |b|
      (3..1000).each do |c|
        if (a+b+c == 1000 && a**2+b**2==c**2) then
          return a*b*c
        end
      end
    end
  end
  return "No solution"
end

puts special_pythagorean_triplet