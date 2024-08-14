def near_ten(num)
  judgement = num % 10
  if judgement >= 8 || judgement <= 2
    puts 'true'
  else
    puts 'false'
  end
end

near_ten(12) #True
near_ten(17) #False
near_ten(19) #True