def count_evens(array)
  counter = 0
  array.each do |number|
    if number.even?
      counter += 1
    end
  end
  
  puts counter

end

count_evens([2, 1, 2, 3, 4])
count_evens([2, 2, 0])
count_evens([1, 3, 5, 2, 4, 10, 200, 4, 6, 1, 8])