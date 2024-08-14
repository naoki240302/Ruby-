def calculate_points(amaunt, is_birthday)
  point = 0

  if amaunt >= 1000
    point = amaunt * 0.05
  else
    point = amaunt * 0.03
  end

  if is_birthday
    point = point * 5
  end

  puts point.floor

end

calculate_points(500, false) #ポイントは15点です
calculate_points(2000, false) #ポイントは100点です
calculate_points(3000, true) #ポイントは750点です