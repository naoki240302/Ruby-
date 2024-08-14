def fizzbuzz(max_num)
  num = 1

  max_num.times do
    if num % 15 == 0
      puts "FizzBuzz"
    elsif num % 3 == 0
      puts "Fizz"
    elsif num % 5 == 0
      puts "Buzz"
    else
      puts num
    end  
    num += 1
  end
  
end

puts 'いくつまで数えますか？'
num = gets.to_i
fizzbuzz(num)