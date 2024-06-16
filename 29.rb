def fizz_buzz
  a = 0
  100.times do
    a += 1
    if (a % 3 == 0) && (a % 5 != 0)
      puts "Fizz"
    elsif (a % 5 == 0) && (a % 3 != 0)
      puts "Buzz"
    elsif a % 15 == 0
      puts "FizzBuzz"
    else
      puts a
    end
  end
end

fizz_buzz