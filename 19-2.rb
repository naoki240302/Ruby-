def count_hi(str)
  counter = str.scan("hi").length
  puts counter
end

# 呼び出し例（引数には対象となる文字列を指定します）
count_hi('abc hi hi')