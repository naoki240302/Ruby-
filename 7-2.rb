require "date"

weeks = ["日", "月", "火", "水", "木", "金", "土"]

day = Date.today.wday

if day == 5
  puts "今日は#{weeks[day]}曜日だ！！！"
else
  puts "今日は#{weeks[day]}曜日"
end