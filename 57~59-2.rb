def register_data(all_data)
  data = {}
  puts "名前を入力してください"
  data[:name] = gets.chomp 
  puts "パンチ力を入力してください(0 ~ 100)"
  data[:punch] = input
  puts "キック力を入力してください(0 ~ 100)"
  data[:kick] = input
  puts "ジャンプ力を入力してください(0 ~ 100)"
  data[:jump] = input

  data[:rank] = hero_rank(data)
  
  all_data << data
end

def show_data_list(all_data)
  puts "見たい人の番号を選択して下さい"
  all_data.each_with_index do |data, index|
    puts "#{index+1}:#{data[:name]}"
  end
  select = gets.to_i
  puts "名前：#{all_data[select-1][:name]}"
  puts "パンチ力：#{all_data[select-1][:punch]}"
  puts "キック力：#{all_data[select-1][:kick]}"
  puts "ジャンプ力：#{all_data[select-1][:jump]}"
  puts "ヒーローランク：#{all_data[select-1][:rank]}"
end

def input
  while true
    input = gets.to_i
    if input >= 0 && input <= 100
      return input
    else
      puts "無効な値です"
      puts "再度入力して下さい"
    end
  end
end

def hero_rank(data)
  total = data[:punch] + data[:kick] + data[:jump]
  if total == 0
    return 'D'
  elsif total > 0 && total <= 100
    return 'C'
  elsif total > 100 && total <= 200
    return 'B'
  elsif total > 200 && total <= 300
    return 'A'
  end
end

all_data = []

while true
  puts "選択してください"
  puts "[0]登録する"
  puts "[1]データを確認する"
  puts "[2]終了する"
  select = gets.to_i

  if select == 0
    register_data(all_data)
  elsif select == 1
    show_data_list(all_data)
  elsif select == 2
    exit
  else
    puts "無効な番号です"
  end
end