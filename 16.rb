class Fruit
  def fresh()
    puts "採れたて新鮮な果実です"
  end
 
  def initialize()
    @name = {apple: "リンゴ", orange: "オレンジ", strawbery: "イチゴ"}
    @price = {apple: 120, orange: 200, strawbery: 60}
  end
 
  def introduce()
    puts "#{@name[:apple]}は#{@price[:apple]}円です"
    puts "#{@name[:orange]}は#{@price[:orange]}円です"
    puts "#{@name[:strawbery]}は#{@price[:strawbery]}円です"
  end
 end
 
 fruits = Fruit.new()
 fruits.fresh()
 fruits.introduce()