def fizzbuzz(max_num)

  (1..max_num).each do |max_num|
    if (max_num % 3 == 0) && (max_num % 5 == 0)
      puts "FizzBuzz"
    elsif max_num % 3 == 0
      puts "Fizz"
    elsif max_num % 5 == 0
      puts "Buzz"
    else
      puts max_num
    end  
  end
  
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)