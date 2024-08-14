def binary_search(ary,num)
  left = 0
  right = ary.length
  
  while left <= right

    center = (left + right) / 2

    if ary[center] == num
      return "#{num}は配列の#{center}番目に存在します"
    elsif ary[center] < num
      left = center + 1
    else
      right = center - 1
    end

  end

  return "#{num}は配列内に存在しません"

end

array=[1,3,5,6,9,10,13,20,26,31]

puts "検索したい数字を入力してください"
search = gets.to_i
puts binary_search(array,search)