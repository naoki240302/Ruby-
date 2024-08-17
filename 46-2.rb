def fortune_telling(birthday)
  unsei = ["凶","中吉","吉", "大吉"].shuffle
  num = (birthday * rand(10)) % 4
  puts unsei[num]
end

puts "誕生日を最大4桁で入力してください(例：4月3日なら403、11月15日なら1115と入力)"
birthday = gets.to_i

fortune_telling(birthday)