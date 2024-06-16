def get_days(year, month)
  leap_year = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  regular_yaer = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

  if year % 4 == 0
    if year % 100 == 0 && year % 400 == 0
      return leap_year[month-1]
    else
      return regular_yaer[month-1]
    end
  else
    return regular_yaer[month-1]
  end
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"