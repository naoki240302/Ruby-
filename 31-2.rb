def end_other(a, b)
  a = a.downcase
  b = b.downcase

  if a.length >= b.length
    judgement(a, b)
  else
    judgement(b, a)
  end

end

def judgement(long, short)
  length = short.length
  if long.slice(-length..-1) == short
    puts 'true'
  else
    puts 'false'
  end
end

# 呼び出し例
end_other('Hiabc', 'abc') 
end_other('AbC', 'HiaBc') #True
end_other('abc', 'HaIoBc') #False