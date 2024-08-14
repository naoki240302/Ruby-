def left2(str)
  str_flont2 = str.slice(-str.length, 2)
  str_other = str.slice(-(str.length-2), (str.length-2))
  puts str_other + str_flont2
end

# 呼び出し例
left2("Hello")
left2("java") #vaja
left2("Hi") #Hi