def register_data(all_data)
  data = {}

  puts "名前を入力してください。"
  name = gets.chomp
  puts "年齢を入力してください。"
  age = gets.to_i
  puts "身長(M単位)を入力してください。"
  height = gets.to_f
  puts "体重(kg単位)を入力してください。"
  weight = gets.to_f

  bmi = calculate_bmi(height, weight).round(2)

  data = {name: name, age: age, height: height, weight: weight, bmi: bmi}
  all_data << data

end

def show_data(all_data)
  puts "見たい人の番号を選択してください。"
  all_data.each_with_index do |data, index|
    puts "#{index+1}:#{data[:name]}"
  end
  select = gets.to_i

  puts "名前:#{all_data[select-1][:name]}"
  puts "年齢:#{all_data[select-1][:age]}"
  puts "身長:#{all_data[select-1][:height]}"
  puts "体重:#{all_data[select-1][:weight]}"
  puts "BMI:#{all_data[select-1][:bmi]}"
end

def calculate_bmi(height, weight)
  return weight / (height/100) / (height/100)
end

all_data = []

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  input = gets.to_i

  if input == 0
    register_data(all_data)
  elsif input == 1
    show_data(all_data)
  elsif input == 2
    exit
  else
    puts "無効な値です"
  end
end