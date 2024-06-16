def in1to10(num, outside_mode)
  if( num >= 1 && num <= 10 || outside_mode)
    puts "in1to10(#{num},#{outside_mode}) → True"
  else
    puts "in1to10(#{num},#{outside_mode}) → False"
  end
end

# 呼び出し例
in1to10(5,false)
in1to10(11,false) 
in1to10(11,true) 