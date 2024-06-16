def calc_multiplication(a, b)
  sum = a * b
  puts "#{a}と#{b}をかけた答えは#{sum}です！"
end

puts "最初の数字を入力してください"
num1 = gets.to_i
puts "2番目の数字を入力してください"
num2 = gets.to_i

calc_multiplication(num1, num2)