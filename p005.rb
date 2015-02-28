def min_divisible_by_first_twenty
  candidate = 2520
  not_divisible = false
  while true
    puts "Candidate = " + candidate.to_s
    [5,7,8,9,11,13,17,19].each do |i|
      if candidate % i != 0
        puts "  Not divisible by " + i.to_s
        not_divisible = true
        break
      end
    end
    return candidate unless not_divisible
    candidate += 2
  end
  return candidate
end

def min_divisible_by_first_twenty_2
  i = 20
  until i%20==0 && i%19==0 && i%18==0 && i%17==0 && i%16==0 && i%15==0 && i%14==0 && i%13==0 && i%12==0 && i%11==0 do
      i+=20
  end
  puts i
end

puts min_divisible_by_first_twenty_2