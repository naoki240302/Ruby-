def num(a, b, c)
  ab = a + b
  if c <= 3
    puts ab / c
  elsif c >= 4
    puts ab * c
  end
end

# 呼び出し例
num(1,5,3) 
num(1,5,5)