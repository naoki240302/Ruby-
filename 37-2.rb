def lone_sum(ary)
  calc = 0
  ary.each_with_index do |num, index|
    if check_same_num(num, ary, index)
      calc += 0
    else
      calc += num
    end    
  end
  puts calc
end

def check_same_num(num, ary, i)
  ary.each_with_index do |target, index|
    if i != index && num == target
      return true
    end
  end
  return false
end

# 呼び出し例
lone_sum([3, 2, 1]) #6
lone_sum([3, 2, 3]) #2
lone_sum([3, 3, 3]) #0
lone_sum([2, 2, 3, 3, 3, 9]) #9