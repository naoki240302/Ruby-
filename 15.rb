def output(input)

  input.times do
    puts "HELLO!"
  end

end

puts "何回表示させますか？"
input = gets.to_i

output(input)