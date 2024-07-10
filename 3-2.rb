scores = [{subject: '国語', score: 80}, {subject: '英語', score: 50}, {subject: '数学', score: 70}]
length = 0
total_score = 0

scores.each do |score|
  total_score = total_score + score[:score]
  length = length + 1
end

average = total_score / length

puts "#{length}教科の平均点は、#{average}点です。"