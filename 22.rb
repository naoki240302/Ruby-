def count_evens(nums)
  count = 0
  nums.each do |num|
    if num.even?
      count += 1
    end     
  end
  puts count
end

count_evens([2, 2, 2, 2, 4]) #5
count_evens([2, 2, 0]) #3
count_evens([1, 3, 5]) #0