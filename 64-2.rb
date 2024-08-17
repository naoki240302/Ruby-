now = Time.new
week = ["日", "月", "火", "水", "木", "金", "土"]
puts "現在は西暦#{now.year}年#{now.month}月#{now.day}日"
puts "#{week[now.wday]}曜日です"