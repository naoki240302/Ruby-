def register_data(data)
  puts "データの登録をします"
  puts "名前を入力してください"
  name = gets.chomp
  puts "年齢を入力してください"
  age = gets.to_i
  puts "身長を入力してください"
  height = gets.to_i
  puts "体重を入力してください"
  weight = gets.to_i

  person = {name: name, age: age, height: height, weight: weight}
  data << person

end

def show_data(data)
  puts "データの確認が出来ます"
  puts "見たい人の番号を選択してください"
  num = 0
  data.each do |data|
    puts "#{num+1}:#{data[:name]}"
    num += 1
  end

  input = gets.to_i
  puts "名前:#{data[input-1][:name]}"
  puts "年齢:#{data[input-1][:age]}"
  puts "身長:#{data[input-1][:height]}"
  puts "体重:#{data[input-1][:weight]}"

end

data = []

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    # データの登録と出力するための関数を呼ぶ
    register_data(data)
  elsif input == 1
    # データの確認と出力するための関数を呼ぶ
    show_data(data)
  elsif input == 2
    # アプリケーションを終了させる
    exit
  else
    puts "無効な選択肢です"
  end
  
end