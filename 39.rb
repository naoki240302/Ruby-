def near_ten(num)

  ones_place = num % 10 #1の位を取り出し
  tens_place = (num/10) % 10 #10の位を取り出し
  hundreds_place = (num/100) % 10 #100の位を取り出し

  sum_place = ones_place + tens_place + hundreds_place
  ones_sum_place = sum_place % 10 #3桁の整数の和から1の桁を取り出し
  tens_sum_place = (sum_place/10) % 10 #3桁の整数の和から10の桁を取り出し

  if ones_sum_place >= 5
    if ones_sum_place >= 8
      puts "True"
    else
      puts "10の倍数との差は#{10-ones_sum_place}です"
    end
  elsif (ones_sum_place < 5) && (tens_sum_place >= 1 )
    if ones_sum_place <= 2
      puts "True"
    else
      puts "10の倍数との差は#{ones_sum_place}です"
    end
  else
    puts "10の倍数との差は#{ones_sum_place}です"
  end
  
end

near_ten(117) #True
near_ten(123) #10の倍数との差は4です
near_ten(111) #10の倍数との差は3です