def register_data(data)
  # 「登録する」を選択した場合の処理
  puts "データの登録をします"
  puts "名前を入力してください"
  name = gets.chomp
  puts "パンチ力を入力してください(0 ~ 100)"
  punch = gets.to_i
  puts "キック力を入力してください(0 ~ 100)"
  kick = gets.to_i
  puts "ジャンプ力を入力してください(0 ~ 100)"
  jump = gets.to_i

  person = {name: name, punch: punch, kick: kick, jump: jump}
  data << person
end
 
def show_data_list(data)
  # 「データを確認する」を選択した場合の処理
  i = 1
  data.each do |d|
    puts "No#{i}:#{d[:name]}"
    i += 1
  end

  puts "見たい人の番号を選択してください"
  p = gets.to_i

  puts "#{data[p-1][:name]}"
  puts "#{data[p-1][:punch]}"
  puts "#{data[p-1][:kick]}"
  puts "#{data[p-1][:jump]}"

end

data = []
 
while true
# アプリを実行した時に、選択肢が表示される処理
puts "選択してください"
puts "[0]登録する"
puts "[1]データを確認する"
puts "[2]終了する"

num = gets.to_i

# 入力した値に応じて実行される処理
if num == 0
  register_data(data)
elsif num == 1
  show_data_list(data)
elsif num == 2
  exit
else
  puts "正しい番号を入力してください"
end

end

