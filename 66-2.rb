def registration_student(students)
  student = {}
  puts '生徒名を入力してください'
  name = gets.chomp
  puts '生徒の年齢を入力してください'
  age = gets.to_i

  puts "国語の得点は？"
  jap = gets.to_i
  puts "数学の得点は？"
  math = gets.to_i
  puts "英語の得点は？"
  eng = gets.to_i

  student = {name: name, age: age, jap: jap, math: math, eng: eng}
  students << student
end

def show_student_name(students)
  puts '見たい生徒の番号を入力してください'
  students.each_with_index do |student, index|
    puts "#{index+1}:#{student[:name]}"
  end
  select = gets.to_i

  puts "名前:#{students[select-1][:name]}"
  puts "年齢:#{students[select-1][:age]}"
  puts "国語:#{students[select-1][:jap]}"
  puts "数学:#{students[select-1][:math]}"
  puts "英語:#{students[select-1][:eng]}"
end

students = []

while true
  puts '行いたい項目を選択してください'
  puts '[1]点数を登録する'
  puts '[2]点数を確認する'
  puts '[3]終了する'
  input = gets.to_i
  if input == 1
    registration_student(students)
  elsif input == 2
    show_student_name(students)
  elsif input == 3
    exit
  else
    puts '無効な値です'
  end
end