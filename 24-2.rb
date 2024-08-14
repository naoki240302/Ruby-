def sleep_in(is_weekday, is_vacation)
  if is_weekday && is_vacation == false
    puts "False"
  else
    puts "True"
  end
end

# 呼び出し例
sleep_in(false, false)
sleep_in(true, false)
sleep_in(false, true)