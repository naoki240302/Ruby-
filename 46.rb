def furtune_telling(birthday)
  telling = ["凶", "中吉", "吉", "大吉"].shuffle
  num = birthday * rand(10) % 4
  puts telling[num]
end

puts "誕生日を4桁の数字で入力してください"
puts "例:4月1日=401、12月31日=1231"

birthday = gets.to_i
furtune_telling(birthday)