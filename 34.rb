def array_count9(nums)
  puts "配列の中に9が#{nums.count(9)}です"
end

# 呼び出し例
array_count9([1, 2, 9]) #配列の中には9が1個です
array_count9([1, 9, 9]) #配列の中には9が2個です
array_count9([1, 9, 9, 3, 9]) #配列の中には9が3個です