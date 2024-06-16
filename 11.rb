def check_name(str) 
  error1 = str.include?(".")
  error2 = str.include?(" ")

  if error1 == true
    puts "!エラー!記号は登録できません"
  elsif error2 == true
    puts "!エラー!空白は登録できません"
  else
    puts "登録が完了しました"
  end

end

puts "登録したい名前を入力してください(例)YamadaTaro"
str = gets
check_name(str) 