def end_other(a, b)
  a = a.downcase
  b = b.downcase
  a_length = a.length
  b_length = b.length

  if (a_length <= b_length) && (b.slice(-a_length..-1) == a)
    puts "True"
  elsif (a_length > b_length) && (a.slice(-b_length..-1) == b)
    puts "True"
  else
    puts "False"
  end

end

# 呼び出し例
end_other('Hiabc', 'abc') #True
end_other('AbC', 'HiaBc') #True
end_other('abc', 'HaIoBc') #False
end_other('abc', 'ABC') #True
end_other('abc', 'abc') #True
end_other('ABC', 'abc') #True