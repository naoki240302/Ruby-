def count_hi(str)
  num = str.scan("hi")
  puts num.size
end

count_hi('abc hi ho')
count_hi('hihihihi')