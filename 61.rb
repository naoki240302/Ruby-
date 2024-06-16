def registration(cars)
  puts "車種を入力してください"
  car_type = gets.to_s
  puts "1L当たりの走行可能距離を整数で入力ください(km/l)"
  cruising_range = gets.to_i
  puts "乗車人数を入力してください(人)"
  passengers = gets.to_i

  car = {car_type: car_type, cruising_range: cruising_range, passengers: passengers}
  cars << car
end

def confirmation(cars)
  num = 1
  cars.each do |car|
    puts "No:#{num}"
    puts "車種:#{car[:car_type]}"
    num += 1
  end

  puts "詳細が知りたい車種の番号を入力してください"
  car_num = gets.to_i
  puts "車種:#{cars[car_num-1][:car_type]}"
  puts "燃費:#{cars[car_num-1][:cruising_range]}"
  puts "乗車人数:#{cars[car_num-1][:passengers]}"
end

cars = []

while true do
  puts "[0]データの登録"
  puts "[1]データの確認"
  puts "[2]プログラムの終了"
  choice = gets.to_i

  if choice == 0
    registration(cars)
  elsif choice == 1
    confirmation(cars)
  elsif choice == 2
    exit
  else
    puts "指定された番号を入力してください"
  end
end