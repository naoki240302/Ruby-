def left2(str)
  str_length = str.length
  a = str[0..1]
  b = str[2..(str_length - 1)]
  puts b + a 
end

# 呼び出し例
left2("Hello") #lloHe
left2("java") #vaja
left2("Hi") #Hi