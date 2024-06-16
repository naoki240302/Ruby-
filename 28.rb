def calculate_points(amount, is_birthday)
  if amount >= 1000
    base_point = (amount *0.05).floor
  else
    base_point = (amount *0.03).floor
  end

  if is_birthday
    point = base_point * 5 
    puts point
  else
    puts base_point
  end
  
end

calculate_points(500, false) #ポイントは15点です
calculate_points(2000, false) #ポイントは100点です
calculate_points(3000, true) #ポイントは750点です