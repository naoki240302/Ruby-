def search(target_num, input)
  flag = 0

  input.each_with_index do |input, i|
    if input == target_num
      puts "#{target_num}は#{i+1}番目にあります"
      flag = flag + 1
      return flag
    end
  end

  return flag

end

input = [3, 5, 9 ,12, 15, 21, 29, 35, 42, 51, 62, 78, 81, 87, 92, 93]
# 呼び出し例

target_num = gets.to_i
flag = search(target_num, input)

if flag == 0
  puts "#{target_num}は存在しません"
end