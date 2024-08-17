class Dog
  @@type = 犬

  def self.say
    puts "ワンワン"
  end

  def initialize
    @name = "マロン"
    @dog_type = "トイプードル"
  end

  def say_type
    puts "私は#{@@type}です"
  end

  def self_introduction
    puts "私の名前は#{@name}で種類は#{@dog_type}です"
  end
end

dog = Dog.new
dog.say_type
dog.self_introduction