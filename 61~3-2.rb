def car_input(all_data)
  data = {}

  puts "車種を入力して下さい"
  type = gets.chomp
  puts "1Lあたりの走行可能距離(km/l)を入力して下さい"
  run = gets.to_f
  puts "乗車人数を入力して下さい"
  carry = gets.to_i

  data = {type: type, run: run, carry: carry}
  all_data << data

end

def data_authentication(all_data)
  puts "詳細が見たい車種の番号を入力して下さい"
  all_data.each_with_index do |data, index|
    puts "#{index+1}:#{data[:type]}"
  end
  select = gets.to_i
  more_info(all_data[select-1])
  will_running(all_data[select-1])
  will_carrying(all_data[select-1])
end

def more_info(data)
  puts "車種:#{data[:type]}"
  puts "走行距離:#{data[:run]}"
  puts "乗車人数:#{data[:carry]}"
end

def will_running(data)
  puts "これから走る予定の走行距離(km/l)を入力して下さい"
  input = gets.to_f
  energy = (input / data[:run]).round(1)
  puts "#{input}kmを走行する為には#{energy}Lのガソリンが必要です"
end

def will_carrying(data)
  puts "これから乗る予定の人数を入力して下さい"
  input = gets.to_i
  if data[:carry] >= input
    puts "後#{data[:carry] - input}人、乗車可能です。"
  else data[:carry] < input
    puts "#{input - data[:carry]}人、乗車オーバーです。"
  end
end

all_data = []

while true do
  puts "番号を選択して下さい"
  puts "[o]データ登録"
  puts "[1]データ確認"
  puts "[2]プログラムの終了"
  select = gets.to_i

  if select == 0
    car_input(all_data)
  elsif select == 1
    data_authentication(all_data)
  elsif select == 2
    exit
  else
    puts "無効な番号です"
    puts "再度番号を入力して下さい"
  end
end