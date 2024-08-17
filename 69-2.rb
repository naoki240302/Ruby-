class Food
  @@calorys = []

  def self.input
    puts "料理名を入力して下さい:"
    food = gets.chomp
    puts "カロリーを入力して下さい:"
    calory = gets.to_i

    calory = Food.new(food, calory)
    @@calorys << calory
  end

  def self.show_all_calory
    sum_calory = 0
    line = "-----------------------"
    puts line

    @@calorys.each do |calory|
      puts "#{calory.food} :#{calory.calory}kcal"
      sum_calory += calory.calory
    end
    puts line
    puts "カロリー合計 :#{sum_calory}kcal"
  end

  def initialize(food, calory)
    @food = food
    @calory = calory
  end

  def food
    return @food
  end

  def calory
    return @calory
  end
end

while true do
  puts "[0]:カロリーを入力する"
  puts "[1]:カロリーの合計を見る"
  input = gets.to_i

  if input == 0
    Food.input          # カロリーの入力
  elsif input == 1
    Food.show_all_calory # カロリーの合計を表示
    exit
  end
end