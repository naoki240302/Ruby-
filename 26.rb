def extra_end(str)
  ele = str.slice(-2,2)
  3.times do
    print ele
  end
end

# 呼び出し例
extra_end('Hello')