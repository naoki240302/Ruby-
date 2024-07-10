sum_calc = 0
num = 1

10.times do
  puts "#{sum_calc} + #{num} = #{sum_calc + num}"
  sum_calc = sum_calc + num
  num += 1
end

puts "---------------------------"
puts "Answer: #{sum_calc}"