class Person
  def initialize(name, old)
    @name = name
    @old = old
  end
end

class Student < Person
  def introduce
    puts "私の名前は#{@name}です。#{@old}歳です。"
  end
end

name = gets.chomp
old = gets.to_i

yourself = Student.new(name, old)
yourself.introduce