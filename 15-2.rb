def output(num)
  num.times do
    puts "Hello!"
  end
end

puts "何回表示させますか？"
num = gets.to_i

output(num)
