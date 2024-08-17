def get_days(year, month)
  leap_year_days = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  nomal_year_days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
  if check_leap_year(year)
    return leap_year_days[month-1]
  elsif !check_leap_year(year)
    return nomal_year_days[month-1]
  end
end

def check_leap_year(year)
  if year % 4 == 0
    if year % 100 == 0 && year % 400 != 0
      false
    else
      true
    end
  end
end

puts "年を入力してください："
year = gets.to_i
puts "月を入力してください："
month = gets.to_i

days = get_days(year, month)
puts "#{year}年#{month}月は#{days}日間あります"
