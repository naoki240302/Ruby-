movie = {"title" => "ハリーポッター", "genre" => "ファンタジー", "year" => "2001年"}

puts "以下から一つを選んで入力してください"
puts "・title"
puts "・genre"
puts "・year"

select = gets.chomp

puts movie[select]