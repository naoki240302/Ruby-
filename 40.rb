def xyz_there(str) 
  if str.include?(".xyz")
    puts "False"
  elsif str.include?("xyz")
    puts "True"
  else
    puts "False"
  end
end

# 呼び出し例
xyz_there('abcxyz')

# 呼び出し例
xyz_there('abcxyz') #True
xyz_there('abc.xyz') #False
xyz_there('xyz.abc') #True
xyz_there('azbycx') #False
xyz_there('a.zbycx') #False