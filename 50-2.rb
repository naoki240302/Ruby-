while true do
  puts "[0]:カロリーを表示する、[1]:終了する"
  select = gets.to_i
  if select == 0
    puts "500lcal"
  else
    return false
  end
end