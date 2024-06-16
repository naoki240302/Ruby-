def sleep_in(is_weekday, is_vacation)
  if !is_weekday || is_vacation
    puts "true"
  else
    puts "false"
  end
end

# 呼び出し例
sleep_in(true, false)