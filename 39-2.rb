def near_ten(num)
  sum = (num / 100) + ((num % 100) / 10) + (num % 10)
  if sum % 10 <= 2 || sum % 10 >= 8
    puts 'true'
  elsif sum % 10 <= 5
    puts "10の倍数との差は#{sum % 10}です"
  else
    puts "10の倍数との差は#{10 - sum % 10}です"
  end
end

near_ten(117) #true
near_ten(111) #10の倍数との差は3です