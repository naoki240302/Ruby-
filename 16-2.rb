class Fruit
  def self.fresh
    puts "採れたて新鮮な果実です"
  end
 
  def initialize(name, price)
    @name = name
    @price = price
    introduce
  end
 
  def introduce
    puts "#{@name}は#{@price}円です"
  end
 end
 
 
 # 3つのインスタンスを生成してください
 
 # クラスメソッドを呼び出し、「採れたて新鮮な果実です」と表示してください
 Fruit.fresh
 # インスタンス毎にインスタンスメソッドを呼び出し、「【名前】は【価格】円です」と表示してください
 fruit = Fruit.new('リンゴ', 120)
 fruit = Fruit.new('オレンジ', 200)
 fruit = Fruit.new('イチゴ', 60)